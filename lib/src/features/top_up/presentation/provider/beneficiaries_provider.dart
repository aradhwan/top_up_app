import 'package:fpdart/fpdart.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:top_up_app/src/src.dart';

part 'beneficiaries_provider.g.dart';

@riverpod
Future<Either<Error, List<BeneficiaryModel>>> beneficiaries(
    BeneficiariesRef ref) async {
  return await GetIt.I.get<IBeneficiaryService>().getBeneficiaries();
}
