import 'package:get_it/get_it.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:top_up_app/src/src.dart';

class BaseMockDataset implements IBaseMockDataset {
  @override
  DioAdapter get dioAdapter => GetIt.I.get();
}
