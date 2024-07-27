import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:top_up_app/src/src.dart';

class BeneficiaryRepository implements IBeneficiaryRepository {
  final IBeneficiaryDataStore dataStore;

  BeneficiaryRepository({required this.dataStore});

  @override
  Future<Either<Error, List<BeneficiaryModel>>> getBeneficiaries() async {
    final response = await dataStore.fetchBeneficiaries();

    if (response.statusCode != 200) {
      return Left(Error(
          code: response.statusCode, message: response.reasonPhrase ?? ""));
    }

    final beneficiaryDtoList = jsonDecode(response.body)
        .map((json) => BeneficiaryDto.fromJson(json))
        .toList();
    return Right(beneficiaryDtoList
        .map((dto) => BeneficiaryModel.fromJson(dto.toJson()))
        .toList());
  }

  @override
  Future<Either<Error, BeneficiaryModel>> addBeneficiary(
      BeneficiaryModel beneficiary) async {
    final response = await dataStore
        .addBeneficiary(BeneficiaryDto.fromJson(beneficiary.toJson()));

    if (response.statusCode != 201) {
      return Left(
        Error(code: response.statusCode, message: response.reasonPhrase ?? ""),
      );
    }

    return Right(BeneficiaryModel.fromJson(jsonDecode(response.body)));
  }
}
