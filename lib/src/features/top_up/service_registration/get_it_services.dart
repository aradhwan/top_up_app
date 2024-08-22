import 'package:get_it/get_it.dart';
import 'package:top_up_app/src/src.dart';

void registerTopUpGetItServices() {
  registerBeneficiaryServices();
}

void registerBeneficiaryServices() {
  // GetIt.I.registerFactory<IBeneficiaryRepository>(
  //   () => BeneficiaryNetworkRepository(
  //     client: GetIt.I.get(),
  //   ),
  // );

  GetIt.I.registerLazySingleton<IBeneficiaryRepository>(
    () => BeneficiaryMockRepository(
      client: GetIt.I.get(),
    ),
  );

  GetIt.I.registerFactory<IBeneficiaryService>(
    () => BeneficiaryService(
      beneficiaryRepository: GetIt.I.get(),
    ),
  );
}
