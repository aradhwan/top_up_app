import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:top_up_app/src/src.dart';

part 'top_up_dto.freezed.dart';
part 'top_up_dto.g.dart';

@freezed
class TopUpDto with _$TopUpDto {
  const factory TopUpDto({
    required TopUpOptionDto topUpOption,
    required BeneficiaryDto beneficiary,
  }) = _TopUpDto;

  factory TopUpDto.fromJson(Map<String, dynamic> json) =>
      _$TopUpDtoFromJson(json);
}
