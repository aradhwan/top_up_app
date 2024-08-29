import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:top_up_app/src/src.dart';

class BaseNetworkRepository implements IBaseNetworkRepository {
  @override
  Dio get dioClient => GetIt.I.get();
}
