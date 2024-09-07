import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:top_up_app/src/src.dart';
import 'package:uuid/uuid.dart';

import '../../../../../setup/setup.dart';

void main() async {
  tearDown(() => GetIt.I.reset());

  group('Test get top up options & test top up beneficiary', () {
    setUp(() {
      setupClient();
      setupUserServices();
      setupTopUpServices();
    });

    test('Test get top up options - Positive Scenario', () async {
      var topUpService = GetIt.I.get<ITopUpService>();
      final topUpOptionsList = await topUpService.getTopUpOptions();
      expect(topUpOptionsList, isNotNull);
      expect(topUpOptionsList!.length, equals(7));
    });

    test('Test top up beneficiary - Positive Scenario', () async {
      var topUpOption = TopUpOption(
        id: const Uuid().v8(),
        name: 'AED 100',
        value: 100,
      );
      var beneficiary = const BeneficiaryModel(
        nickname: 'Hasan',
        phoneNumber: '+971501234567',
      );

      var topUpService = GetIt.I.get<ITopUpService>();
      final response = await topUpService.topUp(
        topUpOption: topUpOption,
        beneficiary: beneficiary,
      );
      expect(response.isRight(), true);
    });
  });

  group('Test top up beneficiary - Negative Scenarios', () {
    var topUpOption = TopUpOption(
      id: const Uuid().v8(),
      name: 'AED 100',
      value: 100,
    );
    var beneficiary = const BeneficiaryModel(
      nickname: 'Hasan',
      phoneNumber: '+971501234567',
    );

    setUp(() => setupClient());

    test('Test top up beneficiary - no sufficient funds', () async {
      setupUserServices(
        initialUserDto: UserDto(
          userId: const Uuid().v8(),
          name: 'John',
          balance: 100.0,
          isVerified: false,
        ),
      );
      setupTopUpServices();

      var topUpService = GetIt.I.get<ITopUpService>();
      final response = await topUpService.topUp(
        topUpOption: topUpOption,
        beneficiary: beneficiary,
      );

      expect(response.isLeft(), true);
      response.fold((l) {
        expect(l.code, equals(412));
        expect(l.message, contains('balance'));
      }, (r) => null);
    });

    test('Test top up beneficiary - max monthly limit reached for account',
        () async {
      setupUserServices();
      setupTopUpServices(
        initialTopUpTransactionDtoList: [
          TopUpTransactionDto(
            id: const Uuid().v8(),
            beneficiaryName: 'Ahmed',
            beneficiaryNumber: '+971581234567',
            amount: 2950.0,
            date: DateTime.now().toUtc(),
          ),
        ],
      );

      var topUpService = GetIt.I.get<ITopUpService>();
      final response = await topUpService.topUp(
        topUpOption: topUpOption,
        beneficiary: beneficiary,
      );

      expect(response.isLeft(), true);
      response.fold((l) {
        expect(l.code, equals(412));
        expect(l.message, contains('3000'));
      }, (r) => null);
    });

    test(
        'Test top up beneficiary - max monthly limit reached for mobile number - Unverified user',
        () async {
      setupUserServices(
        initialUserDto: UserDto(
          userId: const Uuid().v8(),
          name: 'John',
          balance: 5000.0,
          isVerified: false,
        ),
      );
      setupTopUpServices(
        initialTopUpTransactionDtoList: [
          TopUpTransactionDto(
            id: const Uuid().v8(),
            beneficiaryName: 'Ahmed',
            beneficiaryNumber: '+971581234567',
            amount: 1000.0,
            date: DateTime.now().toUtc(),
          ),
        ],
      );

      var topUpService = GetIt.I.get<ITopUpService>();
      final response = await topUpService.topUp(
        topUpOption: topUpOption,
        beneficiary: const BeneficiaryModel(
          nickname: 'Ahmed',
          phoneNumber: '+971581234567',
        ),
      );

      expect(response.isLeft(), true);
      response.fold((l) {
        expect(l.code, equals(412));
        expect(l.message, contains('1000'));
      }, (r) => null);
    });

    test(
        'Test top up beneficiary - max monthly limit reached for mobile number - Verified user',
        () async {
      setupUserServices(
        initialUserDto: UserDto(
          userId: const Uuid().v8(),
          name: 'John',
          balance: 5000.0,
          isVerified: true,
        ),
      );
      setupTopUpServices(
        initialTopUpTransactionDtoList: [
          TopUpTransactionDto(
            id: const Uuid().v8(),
            beneficiaryName: 'Ahmed',
            beneficiaryNumber: '+971581234567',
            amount: 500.0,
            date: DateTime.now().toUtc(),
          ),
        ],
      );

      var topUpService = GetIt.I.get<ITopUpService>();
      final response = await topUpService.topUp(
        topUpOption: topUpOption,
        beneficiary: const BeneficiaryModel(
          nickname: 'Ahmed',
          phoneNumber: '+971581234567',
        ),
      );

      expect(response.isLeft(), true);
      response.fold((l) {
        expect(l.code, equals(412));
        expect(l.message, contains('500'));
      }, (r) => null);
    });
  });
}
