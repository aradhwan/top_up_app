// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_up_transaction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopUpTransactionDtoImpl _$$TopUpTransactionDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TopUpTransactionDtoImpl(
      id: json['id'] as String,
      beneficiaryName: json['beneficiaryName'] as String,
      beneficiaryNumber: json['beneficiaryNumber'] as String,
      amount: (json['amount'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$TopUpTransactionDtoImplToJson(
        _$TopUpTransactionDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'beneficiaryName': instance.beneficiaryName,
      'beneficiaryNumber': instance.beneficiaryNumber,
      'amount': instance.amount,
      'date': instance.date.toIso8601String(),
    };
