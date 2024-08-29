import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:top_up_app/src/src.dart';
import 'package:uuid/uuid.dart';

class TopUpMockDataset extends BaseMockDataset implements ITopUpMockDataset {
  final IUserMockDataset _userMockDataset;
  final _topUpOptionDtoList = [
    TopUpOptionDto(id: const Uuid().v8(), name: 'AED 5', value: 5),
    TopUpOptionDto(id: const Uuid().v8(), name: 'AED 10', value: 10),
    TopUpOptionDto(id: const Uuid().v8(), name: 'AED 20', value: 20),
    TopUpOptionDto(id: const Uuid().v8(), name: 'AED 30', value: 30),
    TopUpOptionDto(id: const Uuid().v8(), name: 'AED 50', value: 50),
    TopUpOptionDto(id: const Uuid().v8(), name: 'AED 75', value: 75),
    TopUpOptionDto(id: const Uuid().v8(), name: 'AED 100', value: 100),
  ];
  final _topUpTransactionDtoList = [
    TopUpTransactionDto(
      id: const Uuid().v8(),
      beneficiaryName: 'Ahmed',
      beneficiaryNumber: '+971581234567',
      amount: 100.0,
      date: DateTime.now().toUtc(),
    ),
    TopUpTransactionDto(
      id: const Uuid().v8(),
      beneficiaryName: 'Ahmed',
      beneficiaryNumber: '+971581234567',
      amount: 100.0,
      date: DateTime.now().toUtc(),
    ),
    TopUpTransactionDto(
      id: const Uuid().v8(),
      beneficiaryName: 'Ahmed',
      beneficiaryNumber: '+971581234567',
      amount: 100.0,
      date: DateTime.now().toUtc(),
    ),
    TopUpTransactionDto(
      id: const Uuid().v8(),
      beneficiaryName: 'Ahmed',
      beneficiaryNumber: '+971581234567',
      amount: 100.0,
      date: DateTime.now().toUtc(),
    ),
    // TopUpTransactionDto(
    //   id: const Uuid().v8(),
    //   beneficiaryName: 'Ahmed',
    //   beneficiaryNumber: '+971581234567',
    //   amount: 100.0,
    //   date: DateTime.now().toUtc(),
    // ),
    TopUpTransactionDto(
      id: const Uuid().v8(),
      beneficiaryName: 'Khalid',
      beneficiaryNumber: '+971507654321',
      amount: 100.0,
      date: DateTime.now().toUtc(),
    ),
    TopUpTransactionDto(
      id: const Uuid().v8(),
      beneficiaryName: 'Hasan',
      beneficiaryNumber: '+971501234567',
      amount: 100.0,
      date: DateTime.now().toUtc(),
    ),
  ];

  TopUpMockDataset({required IUserMockDataset userMockDataset})
      : _userMockDataset = userMockDataset;

  @override
  void mockGetOptions() {
    dioAdapter.onGet(
      TopUpConstant.topUpOptions,
      (server) => server.reply(
        HttpStatus.ok,
        _topUpOptionDtoList.map((b) => b.toJson()).toList(),
        delay: const Duration(seconds: 1),
      ),
    );
  }

  @override
  void mockGetTransactions() {
    dioAdapter.onGet(
      TopUpConstant.topUpTransactions,
      (server) => server.reply(
        HttpStatus.ok,
        _topUpTransactionDtoList.map((t) => t.toJson()).toList(),
        delay: const Duration(seconds: 1),
      ),
    );
  }

  @override
  void mockTopUpBeneficiary(TopUpDto dto) {
    dioAdapter.onPost(
      TopUpConstant.topUp,
      (server) {
        var checkBalanceResult = _checkBalance(dto.topUpOption.value);
        if (checkBalanceResult.isLeft()) {
          var error =
              checkBalanceResult.getLeft().getOrElse(() => const Error());
          return server.reply(
            HttpStatus.preconditionFailed,
            null,
            statusMessage: error.message,
            delay: const Duration(seconds: 1),
          );
        }

        var checkLimitsResult = _checkMonthlyLimits(
          dto.beneficiary.phoneNumber,
          dto.topUpOption.value,
        );
        if (checkLimitsResult.isLeft()) {
          var error =
              checkLimitsResult.getLeft().getOrElse(() => const Error());
          return server.reply(
            HttpStatus.preconditionFailed,
            null,
            statusMessage: error.message,
            delay: const Duration(seconds: 1),
          );
        }

        var debitResult =
            _userMockDataset.debitUserBalance(dto.topUpOption.value + 1);
        if (debitResult.isLeft()) {
          var error = debitResult.getLeft().getOrElse(() => const Error());
          return server.reply(
            HttpStatus.preconditionFailed,
            null,
            statusMessage: error.message,
            delay: const Duration(seconds: 1),
          );
        }

        var topUpResult = _executeTopUp(dto.beneficiary, dto.topUpOption);
        if (topUpResult.isLeft()) {
          _userMockDataset.creditUserBalance(dto.topUpOption.value);
          var error = topUpResult.getLeft().getOrElse(() => const Error());
          return server.reply(
            HttpStatus.internalServerError,
            null,
            statusMessage: error.message,
            delay: const Duration(seconds: 1),
          );
        }

        return server.reply(
          HttpStatus.ok,
          null,
          delay: const Duration(seconds: 1),
        );
      },
      data: dto.toJson(),
    );
  }

  Either<Error, Null> _checkBalance(double topUpAmount) {
    if (_userMockDataset.userBalance < topUpAmount + 1) {
      return const Left(Error(message: "No enough balance"));
    }
    return const Right(null);
  }

  Either<Error, Null> _checkMonthlyLimits(
      String phoneNumber, double topUpAmount) {
    var monthlyLimitResult = _checkMonthlyTopUpLimit(
      _topUpTransactionDtoList,
      topUpAmount,
    );

    if (monthlyLimitResult.isLeft()) {
      return monthlyLimitResult;
    }

    var phoneNumberMonthlyLimitResult = _checkPhoneNumberMonthlyTopUpLimit(
      _topUpTransactionDtoList,
      phoneNumber,
      topUpAmount,
    );
    if (phoneNumberMonthlyLimitResult.isLeft()) {
      return phoneNumberMonthlyLimitResult;
    }

    return const Right(null);
  }

  Either<Error, Null> _checkMonthlyTopUpLimit(
    List<TopUpTransactionDto> transactionsDtoList,
    double topUpAmount,
  ) {
    DateTime now = DateTime.now().toUtc();
    List<TopUpTransactionDto> currentMonthTransactions = transactionsDtoList
        .where((transaction) =>
            transaction.date.year == now.year &&
            transaction.date.month == now.month)
        .toList();

    if (currentMonthTransactions.isEmpty) return const Right(null);

    double totalTopUpAmount = currentMonthTransactions.fold(
            0.0, (sum, transaction) => sum + transaction.amount) +
        topUpAmount;

    if (totalTopUpAmount <= 3000) return const Right(null);

    return const Left(Error(message: 'Monthly top up limit is 3000'));
  }

  Either<Error, Null> _checkPhoneNumberMonthlyTopUpLimit(
    List<TopUpTransactionDto> transactionsDtoList,
    String phoneNumber,
    double topUpAmount,
  ) {
    DateTime now = DateTime.now().toUtc();
    List<TopUpTransactionDto> currentMonthTransactions = transactionsDtoList
        .where((transaction) =>
            transaction.beneficiaryNumber == phoneNumber &&
            transaction.date.year == now.year &&
            transaction.date.month == now.month)
        .toList();

    if (currentMonthTransactions.isEmpty) return const Right(null);

    double totalTopUpAmount = currentMonthTransactions.fold(
            0.0, (sum, transaction) => sum + transaction.amount) +
        topUpAmount;

    double monthlyLimit = _userMockDataset.isVerified ? 500 : 1000;

    if (totalTopUpAmount <= monthlyLimit) return const Right(null);

    return Left(
      Error(
        message:
            'Monthly top up limit for a mobile number is ${monthlyLimit.toString()}',
      ),
    );
  }

  Either<Error, TopUpTransactionDto> _executeTopUp(
    BeneficiaryDto beneficiaryDto,
    TopUpOptionDto topUpOptionDto,
  ) {
    // Execute actual remote top-up call here

    var newTopUpTransaction = TopUpTransactionDto(
      id: const Uuid().v8(),
      beneficiaryName: beneficiaryDto.nickname,
      beneficiaryNumber: beneficiaryDto.phoneNumber,
      amount: topUpOptionDto.value,
      date: DateTime.now().toUtc(),
    );

    _topUpTransactionDtoList.add(newTopUpTransaction);

    return Right(newTopUpTransaction);
  }
}
