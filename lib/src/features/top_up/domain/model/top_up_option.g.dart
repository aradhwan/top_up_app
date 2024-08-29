// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_up_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopUpOptionImpl _$$TopUpOptionImplFromJson(Map<String, dynamic> json) =>
    _$TopUpOptionImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$TopUpOptionImplToJson(_$TopUpOptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
    };
