import 'package:top_up_app/src/src.dart';
import 'package:uuid/uuid.dart';

class UserRepository implements IUserRepository {
  @override
  Future<UserModel> getUserInfo() async {
    await Future.delayed(const Duration(seconds: 2));
    var dto = UserDto(
      userId: const Uuid().v8(),
      balance: 1000.0,
      isVerified: true,
    );
    return Future.value(UserModel.fromJson(dto.toJson()));
  }
}
