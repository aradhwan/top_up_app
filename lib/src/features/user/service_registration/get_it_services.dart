import 'package:get_it/get_it.dart';
import 'package:top_up_app/src/src.dart';

void registerUserGetItServices() {
  GetIt.I.registerSingleton<IUserMockDataset>(
    UserMockDataset(),
  );

  GetIt.I.registerFactory<IUserRepository>(
    () => UserMockRepository(
      dataset: GetIt.I.get(),
    ),
  );

  GetIt.I.registerFactory<IUserService>(
    () => UserService(
      userRepository: GetIt.I.get(),
    ),
  );
}
