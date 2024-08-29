import 'package:get_it/get_it.dart';
import 'package:top_up_app/src/src.dart';

void registerTopUpGetItServices() {
  registerBeneficiaryServices();
  registerTopUpServices();
}

void registerBeneficiaryServices() {
  GetIt.I.registerSingleton<IBeneficiaryMockDataset>(
    BeneficiaryMockDataset(),
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

void registerTopUpServices() {
  GetIt.I.registerSingleton<ITopUpMockDataset>(
    TopUpMockDataset(
      userMockDataset: GetIt.I.get(),
    ),
  );

  GetIt.I.registerFactory<ITopUpRepository>(
    () => TopUpMockRepository(
      dataset: GetIt.I.get(),
    ),
  );

  GetIt.I.registerFactory<ITopUpService>(
    () => TopUpService(
      topUpRepository: GetIt.I.get(),
    ),
  );
}
