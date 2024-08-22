import 'package:freezed_annotation/freezed_annotation.dart';

part 'beneficiary_dto.freezed.dart';
part 'beneficiary_dto.g.dart';

@freezed
class BeneficiaryDto with _$BeneficiaryDto {
  const factory BeneficiaryDto({
    required String nickname,
    required String phoneNumber,
  }) = _BeneficiaryDto;

  factory BeneficiaryDto.fromJson(Map<String, dynamic> json) =>
      _$BeneficiaryDtoFromJson(json);
}
