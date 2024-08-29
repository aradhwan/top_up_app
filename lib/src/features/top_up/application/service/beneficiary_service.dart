import 'package:fpdart/fpdart.dart';
import 'package:top_up_app/src/src.dart';

class BeneficiaryService implements IBeneficiaryService {
  final IBeneficiaryRepository beneficiaryRepository;

  BeneficiaryService({required this.beneficiaryRepository});

  @override
  Future<Either<Error, List<BeneficiaryModel>>> getBeneficiaries() {
    return beneficiaryRepository.getBeneficiaries();
  }

  @override
  Future<Either<Error, BeneficiaryModel>> addBeneficiary({
    required String nickname,
    required String phoneNumber,
  }) {
    return beneficiaryRepository.addBeneficiary(
      beneficiary: BeneficiaryModel(
        nickname: nickname,
        phoneNumber: '+971$phoneNumber',
      ),
    );
  }
}
