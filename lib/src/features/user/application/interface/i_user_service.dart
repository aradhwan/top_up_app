import 'package:top_up_app/src/src.dart';

abstract class IUserService {
  Future<UserModel?> getUserInfo();
}
