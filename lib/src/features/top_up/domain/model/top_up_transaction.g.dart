// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_up_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopUpTransactionImpl _$$TopUpTransactionImplFromJson(
        Map<String, dynamic> json) =>
    _$TopUpTransactionImpl(
      id: json['id'] as String,
      beneficiaryName: json['beneficiaryName'] as String,
      beneficiaryNumber: json['beneficiaryNumber'] as String,
      amount: (json['amount'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$TopUpTransactionImplToJson(
        _$TopUpTransactionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'beneficiaryName': instance.beneficiaryName,
      'beneficiaryNumber': instance.beneficiaryNumber,
      'amount': instance.amount,
      'date': instance.date.toIso8601String(),
    };
