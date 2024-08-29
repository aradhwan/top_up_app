import 'package:fpdart/fpdart.dart';
import 'package:top_up_app/src/src.dart';

abstract class IBeneficiaryRepository {
  Future<Either<Error, List<BeneficiaryModel>>> getBeneficiaries();
  Future<Either<Error, BeneficiaryModel>> addBeneficiary({
    required BeneficiaryModel beneficiary,
  });
}
