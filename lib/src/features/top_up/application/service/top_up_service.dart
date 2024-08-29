import 'package:fpdart/fpdart.dart';
import 'package:top_up_app/src/src.dart';

class TopUpService implements ITopUpService {
  final ITopUpRepository _topUpRepository;

  TopUpService({required ITopUpRepository topUpRepository})
      : _topUpRepository = topUpRepository;

  @override
  Future<List<TopUpOption>?> getTopUpOptions() {
    return _topUpRepository.getTopUpOptions();
  }

  @override
  Future<Either<Error, Object?>> topUp({
    required TopUpOption topUpOption,
    required BeneficiaryModel beneficiary,
  }) {
    return _topUpRepository.topUpBeneficiary(
      topUpModel: TopUpModel(
        topUpOption: topUpOption,
        beneficiary: beneficiary,
      ),
    );
  }
}
