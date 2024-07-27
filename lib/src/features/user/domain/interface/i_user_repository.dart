import 'package:top_up_app/src/src.dart';

abstract class IUserRepository {
  Future<UserModel> getUserInfo();
}
