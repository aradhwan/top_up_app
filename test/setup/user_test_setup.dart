import 'package:get_it/get_it.dart';
import 'package:top_up_app/src/src.dart';

void setupUserServices({UserDto? initialUserDto}) {
  GetIt.I.registerSingleton<IUserMockDataset>(
    UserMockDataset(initialUserDto: initialUserDto),
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
