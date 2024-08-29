// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_up_option_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopUpOptionDtoImpl _$$TopUpOptionDtoImplFromJson(Map<String, dynamic> json) =>
    _$TopUpOptionDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$TopUpOptionDtoImplToJson(
        _$TopUpOptionDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
    };
