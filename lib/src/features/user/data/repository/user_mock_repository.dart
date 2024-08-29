import 'package:top_up_app/src/src.dart';

class UserMockRepository extends BaseNetworkRepository
    implements IUserRepository {
  final IUserMockDataset? _dataset;

  UserMockRepository({IUserMockDataset? dataset}) : _dataset = dataset;

  @override
  Future<UserModel?> getUserInfo() async {
    _dataset?.mockGetUserInfo();
    try {
      final response = await dioClient.get(UserConstant.user);
      final userDto = UserDto.fromJson(response.data);

      return UserModel.fromJson(userDto.toJson());
    } catch (e) {
      return null;
    }
  }
}
