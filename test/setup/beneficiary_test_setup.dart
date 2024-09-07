import 'package:get_it/get_it.dart';
import 'package:top_up_app/src/src.dart';

void setupBeneficiaryServices({List<BeneficiaryDto>? initialBeneficiaryList}) {
  GetIt.I.registerSingleton<IBeneficiaryMockDataset>(
    BeneficiaryMockDataset(beneficiaryDtoList: initialBeneficiaryList),
  );

  GetIt.I.registerFactory<IBeneficiaryRepository>(
    () => BeneficiaryMockRepository(
      dataset: GetIt.I.get(),
    ),
  );

  GetIt.I.registerFactory<IBeneficiaryService>(
    () => BeneficiaryService(
      beneficiaryRepository: GetIt.I.get(),
    ),
  );
}
