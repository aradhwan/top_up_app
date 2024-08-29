import 'package:flutter/foundation.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

abstract class IBaseMockDataset {
  @protected
  DioAdapter get dioAdapter;
}
