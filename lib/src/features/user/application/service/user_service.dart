import 'package:top_up_app/src/src.dart';

class UserService implements IUserService {
  final IUserRepository _userRepository;

  UserService({required IUserRepository userRepository})
      : _userRepository = userRepository;

  @override
  Future<UserModel?> getUserInfo() {
    return _userRepository.getUserInfo();
  }
}
