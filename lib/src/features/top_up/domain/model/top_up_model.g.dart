// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_up_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopUpModelImpl _$$TopUpModelImplFromJson(Map<String, dynamic> json) =>
    _$TopUpModelImpl(
      topUpOption:
          TopUpOption.fromJson(json['topUpOption'] as Map<String, dynamic>),
      beneficiary: BeneficiaryModel.fromJson(
          json['beneficiary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TopUpModelImplToJson(_$TopUpModelImpl instance) =>
    <String, dynamic>{
      'topUpOption': instance.topUpOption.toJson(),
      'beneficiary': instance.beneficiary.toJson(),
    };
