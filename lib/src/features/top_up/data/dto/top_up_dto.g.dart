// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_up_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopUpDtoImpl _$$TopUpDtoImplFromJson(Map<String, dynamic> json) =>
    _$TopUpDtoImpl(
      topUpOption:
          TopUpOptionDto.fromJson(json['topUpOption'] as Map<String, dynamic>),
      beneficiary:
          BeneficiaryDto.fromJson(json['beneficiary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TopUpDtoImplToJson(_$TopUpDtoImpl instance) =>
    <String, dynamic>{
      'topUpOption': instance.topUpOption.toJson(),
      'beneficiary': instance.beneficiary.toJson(),
    };
