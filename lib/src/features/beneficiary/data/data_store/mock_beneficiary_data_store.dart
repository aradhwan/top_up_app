import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:top_up_app/src/src.dart';

class MockBeneficiaryDataStore implements IBeneficiaryDataStore {
  final List<BeneficiaryDto> _mockData = [
    const BeneficiaryDto(nickname: 'Ahmed', phoneNumber: '501234567'),
    const BeneficiaryDto(nickname: 'Khalid', phoneNumber: '507654321'),
  ];

  @override
  Future<Response> fetchBeneficiaries() async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 1));
    return Response(jsonEncode(_mockData), HttpStatus.ok);
  }

  @override
  Future<Response> addBeneficiary(BeneficiaryDto beneficiaryDto) async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 1));

    if (_mockData.length >= 5) {
      return Response("", HttpStatus.conflict,
          reasonPhrase:
              "You have already reached the maximum allowed number of beneficiaries.");
    } else if (_mockData.any((beneficiary) => beneficiary == beneficiaryDto)) {
      return Response("", HttpStatus.conflict,
          reasonPhrase:
              "The beneficiary you are trying to add already exists in your list.");
    }

    _mockData.add(beneficiaryDto);
    return Response(jsonEncode(beneficiaryDto), HttpStatus.created);
  }
}
