import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:top_up_app/src/src.dart';

class BeneficiaryMockRepository extends BaseNetworkRepository
    implements IBeneficiaryRepository {
  final IBeneficiaryMockDataset? _dataset;

  BeneficiaryMockRepository({
    IBeneficiaryMockDataset? dataset,
  }) : _dataset = dataset;

  @override
  Future<Either<Error, List<BeneficiaryModel>>> getBeneficiaries() async {
    try {
      _dataset?.mockGetBeneficiaries();
      final response = await dioClient.get(BeneficiaryConstant.beneficiary);
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
            : Error(message: e.toString()),
      );
    } catch (e) {
      return const Left(Error());
    }
  }

  @override
  Future<Either<Error, BeneficiaryModel>> addBeneficiary({
    required BeneficiaryModel beneficiary,
  }) async {
    var beneficiaryDto = BeneficiaryDto.fromJson(beneficiary.toJson());
    _dataset?.mockAddBeneficiary(beneficiaryDto);
    try {
      final response = await dioClient.post(
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
            : Error(message: e.toString()),
      );
    } catch (e) {
      return const Left(Error());
    }
  }
}
