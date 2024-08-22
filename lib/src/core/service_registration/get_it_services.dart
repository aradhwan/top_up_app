import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:top_up_app/src/src.dart';

void registerCoreGetItServices() {
  GetIt.I.registerSingleton<Dio>(
    Dio(
      BaseOptions(
        baseUrl: NetworkConstant.baseUrl,
      ),
    ),
  );
}
