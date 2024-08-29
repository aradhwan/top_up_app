import 'dart:io';

import 'package:top_up_app/src/src.dart';

class BeneficiaryMockDataset extends BaseMockDataset
    implements IBeneficiaryMockDataset {
  final _beneficiaryDtoList = [
    const BeneficiaryDto(
        nickname: 'Ahmed Radwan', phoneNumber: '+971581234567'),
    const BeneficiaryDto(nickname: 'Khalid', phoneNumber: '+971507654321'),
    const BeneficiaryDto(nickname: 'Hasan', phoneNumber: '+971501234567'),
  ];

  @override
  void mockGetBeneficiaries() {
    dioAdapter.onGet(
      BeneficiaryConstant.beneficiary,
      (server) => server.reply(
        HttpStatus.ok,
        _beneficiaryDtoList.map((b) => b.toJson()).toList(),
        delay: const Duration(seconds: 1),
      ),
    );
  }

  @override
  void mockAddBeneficiary(BeneficiaryDto dto) {
    dioAdapter.onPost(
      BeneficiaryConstant.beneficiary,
      (server) {
        if (_reachedMaxCount()) {
          return server.reply(
            HttpStatus.conflict,
            null,
            statusMessage:
                "You have reached the maximum number of allowed beneficiaries.",
            delay: const Duration(seconds: 1),
          );
        } else if (_beneficiaryExists(dto)) {
          return server.reply(
            HttpStatus.conflict,
            null,
            statusMessage: "Phone Number already registered.",
            delay: const Duration(seconds: 1),
          );
        }

        _beneficiaryDtoList.add(dto);

        return server.reply(
          HttpStatus.created,
          dto,
          delay: const Duration(seconds: 1),
        );
      },
      data: dto.toJson(),
    );
  }

  bool _reachedMaxCount() => _beneficiaryDtoList.length == 5;

  bool _beneficiaryExists(BeneficiaryDto dto) =>
      _beneficiaryDtoList.any((e) => e.phoneNumber == dto.phoneNumber);
}
