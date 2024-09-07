import 'package:get_it/get_it.dart';
import 'package:top_up_app/src/src.dart';

void setupTopUpServices({
  List<TopUpOptionDto>? initialTopUpOptionDtoList,
  List<TopUpTransactionDto>? initialTopUpTransactionDtoList,
}) {
  GetIt.I.registerSingleton<ITopUpMockDataset>(
    TopUpMockDataset(
      userMockDataset: GetIt.I.get(),
      initialTopUpOptionDtoList: initialTopUpOptionDtoList,
      initialTopUpTransactionDtoList: initialTopUpTransactionDtoList,
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
