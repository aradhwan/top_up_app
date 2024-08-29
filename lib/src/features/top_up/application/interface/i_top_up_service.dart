import 'package:fpdart/fpdart.dart';
import 'package:top_up_app/src/src.dart';

abstract class ITopUpService {
  Future<List<TopUpOption>?> getTopUpOptions();
  Future<Either<Error, Object?>> topUp({
    required TopUpOption topUpOption,
    required BeneficiaryModel beneficiary,
  });
}
