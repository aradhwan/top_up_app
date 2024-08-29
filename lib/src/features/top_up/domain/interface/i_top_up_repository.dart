import 'package:fpdart/fpdart.dart';
import 'package:top_up_app/src/src.dart';

abstract class ITopUpRepository {
  Future<List<TopUpOption>?> getTopUpOptions();
  Future<Either<Error, Object?>> topUpBeneficiary({
    required TopUpModel topUpModel,
  });
  Future<Either<Error, List<TopUpTransactionDto>>> getTopUpTransactions();
}
