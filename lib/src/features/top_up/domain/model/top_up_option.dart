import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_up_option.freezed.dart';
part 'top_up_option.g.dart';

@freezed
class TopUpOption with _$TopUpOption {
  const factory TopUpOption({
    required String id,
    required String name,
    required double value,
  }) = _TopUpOption;

  factory TopUpOption.fromJson(Map<String, dynamic> json) =>
      _$TopUpOptionFromJson(json);
}
