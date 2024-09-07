import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

setupClient() async {
  GetIt.I.registerSingleton(
    Dio(
      BaseOptions(
        baseUrl: "https://www.fakeurl.com/api",
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
