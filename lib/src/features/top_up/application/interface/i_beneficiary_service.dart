import 'package:fpdart/fpdart.dart';
import 'package:top_up_app/src/src.dart';

abstract class IBeneficiaryService {
  Future<Either<Error, List<BeneficiaryModel>>> getBeneficiaries();
  Future<Either<Error, BeneficiaryModel>> addBeneficiary({
    required String nickname,
    required String phoneNumber,
  });
}
