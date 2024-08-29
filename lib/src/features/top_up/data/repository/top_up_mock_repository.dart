import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:top_up_app/src/src.dart';

class TopUpMockRepository extends BaseNetworkRepository
    implements ITopUpRepository {
  final ITopUpMockDataset? _dataset;

  TopUpMockRepository({ITopUpMockDataset? dataset}) : _dataset = dataset;

  @override
  Future<Either<Error, List<TopUpTransactionDto>>>
      getTopUpTransactions() async {
    _dataset?.mockGetTransactions();
    try {
      final response = await dioClient.get(TopUpConstant.topUpTransactions);
      final transactionDtoList = response.data
          .map((json) =>
              TopUpTransactionDto.fromJson(json as Map<String, dynamic>))
          .toList();

      final transactionList = transactionDtoList
          .map<TopUpTransaction>(
              (dto) => TopUpTransaction.fromJson(dto.toJson()))
          .toList();
      return transactionList;
    } catch (e) {
      return const Left(Error(message: 'Error retrieving top-up transactions'));
    }
  }

  @override
  Future<List<TopUpOption>?> getTopUpOptions() async {
    _dataset?.mockGetOptions();
    try {
      final response = await dioClient.get(TopUpConstant.topUpOptions);
      final optionsDtoList = response.data
          .map((json) => TopUpOptionDto.fromJson(json as Map<String, dynamic>))
          .toList();

      final optionsModelList = optionsDtoList
          .map<TopUpOption>((dto) => TopUpOption.fromJson(dto.toJson()))
          .toList();
      return optionsModelList;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<Either<Error, Object?>> topUpBeneficiary({
    required TopUpModel topUpModel,
  }) async {
    var topUpDto = TopUpDto.fromJson(topUpModel.toJson());
    _dataset?.mockTopUpBeneficiary(topUpDto);
    try {
      final response = await dioClient.post(
        TopUpConstant.topUp,
        data: topUpDto.toJson(),
      );

      if (response.statusCode != HttpStatus.ok) {
        return Left(
          Error(code: response.statusCode, message: response.statusMessage!),
        );
      }
      return const Right(null);
    } on DioException catch (e) {
      return Left(
        e.response != null
            ? Error(
                code: e.response!.statusCode,
                message: e.response!.statusMessage!,
              )
            : Error(message: e.toString()),
      );
    } catch (e) {
      return const Left(Error());
    }
  }
}
