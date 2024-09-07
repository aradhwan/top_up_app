import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:top_up_app/src/src.dart';
import 'package:uuid/uuid.dart';

class UserMockDataset extends BaseMockDataset implements IUserMockDataset {
  var _userDto = UserDto(
    userId: const Uuid().v8(),
    name: 'Ahmed',
    balance: 1000.0,
    isVerified: true,
  );

  UserMockDataset({UserDto? initialUserDto}) {
    if (initialUserDto != null) {
      _userDto = initialUserDto;
    }
  }

  @override
  void mockGetUserInfo() {
    dioAdapter.onGet(
      UserConstant.user,
      (server) => server.reply(
        HttpStatus.ok,
        _userDto.toJson(),
        delay: const Duration(seconds: 1),
      ),
    );
  }

  @override
  double creditUserBalance(double amount) {
    double balance = _userDto.balance + amount;
    _userDto = _userDto.copyWith(balance: balance);
    return balance;
  }

  @override
  Either<Error, double> debitUserBalance(double amount) {
    double balance = _userDto.balance;
    if (amount > balance) {
      return const Left(Error(message: 'insufficient funds'));
    }
    balance -= amount;
    _userDto = _userDto.copyWith(balance: balance);
    return Right(balance);
  }

  @override
  double get userBalance => _userDto.balance;

  @override
  bool get isVerified => _userDto.isVerified;
}
