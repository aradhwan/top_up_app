import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:top_up_app/src/src.dart';

class BeneficiaryNetworkRepository implements IBeneficiaryRepository {
  final Dio _client;

  BeneficiaryNetworkRepository({required Dio client}) : _client = client;

  @override
  Future<Either<Error, BeneficiaryModel>> addBeneficiary(
    BeneficiaryModel beneficiary,
  ) async {
    final response = await _client.post(
      BeneficiaryConstant.beneficiary,
      data: beneficiary.toJson(),
    );

    if (response.statusCode != HttpStatus.created) {
      return Left(
        Error(
          code: response.statusCode,
          message: response.statusMessage ?? "",
        ),
      );
    }

    return Right(BeneficiaryModel.fromJson(response.data));
  }

  @override
  Future<Either<Error, List<BeneficiaryModel>>> getBeneficiaries() async {
    final response = await _client.get(BeneficiaryConstant.beneficiary);

    if (response.statusCode != HttpStatus.ok) {
      return Left(
        Error(
          code: response.statusCode,
          message: response.statusMessage ?? "",
        ),
      );
    }

    final beneficiaryDtoList = response.data
        .map((json) => BeneficiaryDto.fromJson(json as Map<String, dynamic>))
        .toList();

    final beneficiaryModelList = beneficiaryDtoList
        .map<BeneficiaryModel>((dto) => BeneficiaryModel.fromJson(dto.toJson()))
        .toList();

    return Right(beneficiaryModelList);
  }
}
