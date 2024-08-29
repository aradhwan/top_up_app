import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class IBaseNetworkRepository {
  @protected
  Dio get dioClient;
}
