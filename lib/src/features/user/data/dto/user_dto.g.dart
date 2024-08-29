// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDtoImpl _$$UserDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserDtoImpl(
      userId: json['userId'] as String,
      name: json['name'] as String,
      isVerified: json['isVerified'] as bool? ?? false,
      balance: (json['balance'] as num).toDouble(),
    );

Map<String, dynamic> _$$UserDtoImplToJson(_$UserDtoImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
      'isVerified': instance.isVerified,
      'balance': instance.balance,
    };
