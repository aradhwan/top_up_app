import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:top_up_app/src/src.dart';

part 'top_up_options_provider.g.dart';

@riverpod
Future<List<TopUpOption>?> topUpOptions(TopUpOptionsRef ref) {
  return GetIt.I.get<ITopUpService>().getTopUpOptions();
}
