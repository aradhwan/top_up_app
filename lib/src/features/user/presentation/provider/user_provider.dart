import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:top_up_app/src/src.dart';

part 'user_provider.g.dart';

@riverpod
Future<UserModel?> user(UserRef ref) {
  return GetIt.I.get<IUserService>().getUserInfo();
}
