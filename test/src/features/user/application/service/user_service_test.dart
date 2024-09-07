import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:top_up_app/src/src.dart';
import 'package:uuid/uuid.dart';

import '../../../../../setup/setup.dart';

void main() async {
  group('Test get default user info', () {
    setUp(() {
      setupClient();
      setupUserServices();
    });

    tearDown(() => GetIt.I.reset());

    test('Test get user info', () async {
      var userService = GetIt.I.get<IUserService>();
      final userModel = await userService.getUserInfo();
      expect(userModel, isNotNull);
      expect(userModel!.isVerified, isTrue);
    });
  });

  group('Test get custom user info', () {
    var userDto = UserDto(
      userId: const Uuid().v8(),
      name: 'John',
      balance: 5000.0,
      isVerified: false,
    );

    setUp(() {
      setupClient();
      setupUserServices(initialUserDto: userDto);
    });

    tearDown(() => GetIt.I.reset());

    test('Test get user info', () async {
      var userService = GetIt.I.get<IUserService>();
      final userModel = await userService.getUserInfo();
      expect(userModel, isNotNull);
      expect(userModel!.name, equals(userDto.name));
    });

    test('Test get user verification status', () async {
      var userService = GetIt.I.get<IUserService>();
      final userModel = await userService.getUserInfo();
      expect(userModel, isNotNull);
      expect(userModel!.isVerified, equals(userDto.isVerified));
    });

    test('Test get user balance', () async {
      var userService = GetIt.I.get<IUserService>();
      final userModel = await userService.getUserInfo();
      expect(userModel, isNotNull);
      expect(userModel!.balance, equals(userDto.balance));
    });
  });
}
