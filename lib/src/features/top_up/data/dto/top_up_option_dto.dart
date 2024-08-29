import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_up_option_dto.freezed.dart';
part 'top_up_option_dto.g.dart';

@freezed
class TopUpOptionDto with _$TopUpOptionDto {
  const factory TopUpOptionDto({
    required String id,
    required String name,
    required double value,
  }) = _TopUpOptionDto;

  factory TopUpOptionDto.fromJson(Map<String, dynamic> json) =>
      _$TopUpOptionDtoFromJson(json);
}
