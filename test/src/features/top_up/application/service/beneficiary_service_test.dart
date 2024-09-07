import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:top_up_app/src/src.dart';

import '../../../../../setup/setup.dart';

void main() async {
  group('Test get beneficiary list & add beneficiary', () {
    setUp(() {
      setupClient();
      setupBeneficiaryServices();
    });

    tearDown(() => GetIt.I.reset());

    // Positive scenario
    test('Test get beneficiary list', () async {
      var beneficiaryService = GetIt.I.get<IBeneficiaryService>();
      final response = await beneficiaryService.getBeneficiaries();
      expect(response.isRight(), true);
      response.fold((l) => null, (r) => expect(r.length, equals(3)));
    });

    // Positive scenario
    test('Test add beneficiary', () async {
      var beneficiaryService = GetIt.I.get<IBeneficiaryService>();
      final response = await beneficiaryService.addBeneficiary(
          nickname: 'Steven', phoneNumber: '591234567');
      expect(response.isRight(), true);
      response.fold((l) => null, (r) => expect(r.nickname, equals('Steven')));
    });

    // Negative scenario
    test('Test add existing beneficiary', () async {
      var beneficiaryService = GetIt.I.get<IBeneficiaryService>();
      final response = await beneficiaryService.addBeneficiary(
          nickname: 'Steven', phoneNumber: '501234567');
      expect(response.isLeft(), true);
      response.fold((l) {
        expect(l.code, equals(409));
        expect(l.message, contains('already registered'));
      }, (r) => null);
    });
  });

  group('Test Add beneficiary - Negative Scenarios', () {
    var beneficiaries = [
      const BeneficiaryDto(nickname: 'Ahmed', phoneNumber: '+971581234567'),
      const BeneficiaryDto(nickname: 'Khalid', phoneNumber: '+971507654321'),
      const BeneficiaryDto(nickname: 'Hasan', phoneNumber: '+971501234567'),
      const BeneficiaryDto(nickname: 'Ali', phoneNumber: '+971501222333'),
      const BeneficiaryDto(nickname: 'Amr', phoneNumber: '+971502333444'),
    ];

    setUp(() {
      setupClient();
      setupBeneficiaryServices(initialBeneficiaryList: beneficiaries);
    });

    tearDown(() => GetIt.I.reset());

    // Negative scenario
    test('Test add beneficiary while having max number of beneficiaries added',
        () async {
      var beneficiaryService = GetIt.I.get<IBeneficiaryService>();

      final response = await beneficiaryService.addBeneficiary(
          nickname: 'Steven', phoneNumber: '591234567');
      expect(response.isLeft(), true);
      response.fold((l) {
        expect(l.code, equals(409));
        expect(l.message, contains('maximum number'));
      }, (r) => null);
    });
  });
}
