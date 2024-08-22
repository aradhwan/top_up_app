import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:top_up_app/src/src.dart';

class BeneficiaryMockRepository implements IBeneficiaryRepository {
  final Dio _client;
  late DioAdapter _dioAdapter;

  final _beneficiaryDtoList = [
    const BeneficiaryDto(
        nickname: 'Ahmed Radwan', phoneNumber: '+971581234567'),
    const BeneficiaryDto(nickname: 'Khalid', phoneNumber: '+971507654321'),
    const BeneficiaryDto(nickname: 'Hasan', phoneNumber: '+971501234567'),
  ];

  BeneficiaryMockRepository({required Dio client}) : _client = client {
    _dioAdapter = DioAdapter(
      dio: _client,
      printLogs: true,
    );
  }

  @override
  Future<Either<Error, List<BeneficiaryModel>>> getBeneficiaries() async {
    _setupGetResponses();

    try {
      final response = await _client.get(BeneficiaryConstant.beneficiary);
      final beneficiaryDtoList = response.data
          .map((json) => BeneficiaryDto.fromJson(json as Map<String, dynamic>))
          .toList();

      final beneficiaryModelList = beneficiaryDtoList
          .map<BeneficiaryModel>(
              (dto) => BeneficiaryModel.fromJson(dto.toJson()))
          .toList();
      return Right(beneficiaryModelList);
    } on DioException catch (e) {
      return Left(
        e.response != null
            ? Error(
                code: e.response!.statusCode,
                message: e.response!.statusMessage!,
              )
            : Error(message: e.message!),
      );
    } catch (e) {
      return const Left(Error());
    }
  }

  @override
  Future<Either<Error, BeneficiaryModel>> addBeneficiary(
    BeneficiaryModel beneficiary,
  ) async {
    var beneficiaryDto = BeneficiaryDto.fromJson(beneficiary.toJson());

    _setupAddResponses(beneficiaryDto);

    try {
      final response = await _client.post(
        BeneficiaryConstant.beneficiary,
        data: beneficiaryDto.toJson(),
      );
      return Right(BeneficiaryModel.fromJson(response.data));
    } on DioException catch (e) {
      return Left(
        e.response != null
            ? Error(
                code: e.response!.statusCode,
                message: e.response!.statusMessage!,
              )
            : Error(message: e.message!),
      );
    } catch (e) {
      return const Left(Error());
    }
  }

  void _setupGetResponses() {
    _dioAdapter.onGet(
      BeneficiaryConstant.beneficiary,
      (server) => server.reply(
        HttpStatus.ok,
        _beneficiaryDtoList.map((b) => b.toJson()).toList(),
        delay: const Duration(seconds: 1),
      ),
    );
  }

  void _setupAddResponses(BeneficiaryDto dto) {
    _dioAdapter.onPost(
      BeneficiaryConstant.beneficiary,
      (server) {
        if (_reachedMaxCount()) {
          return server.reply(
            HttpStatus.conflict,
            null,
            statusMessage:
                "You have reached the maximum number of allowed beneficiaries. No further additions are permitted.",
            delay: const Duration(seconds: 1),
          );
        } else if (_beneficiaryExists(dto)) {
          return server.reply(
            HttpStatus.conflict,
            null,
            statusMessage: "Beneficiary already exists.",
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
