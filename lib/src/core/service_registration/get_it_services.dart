import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:top_up_app/src/src.dart';

void registerCoreGetItServices() {
  GetIt.I.registerSingleton(
    Dio(
      BaseOptions(
        baseUrl: NetworkConstant.baseUrl,
      ),
    ),
  );

  GetIt.I.registerSingleton(
    DioAdapter(
      dio: GetIt.I.get(),
      printLogs: true,
    ),
  );
}
