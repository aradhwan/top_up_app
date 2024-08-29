import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_up_transaction.freezed.dart';
part 'top_up_transaction.g.dart';

@freezed
class TopUpTransaction with _$TopUpTransaction {
  const factory TopUpTransaction({
    required String id,
    required String beneficiaryName,
    required String beneficiaryNumber,
    required double amount,
    required DateTime date,
  }) = _TopUpTransaction;

  factory TopUpTransaction.fromJson(Map<String, dynamic> json) =>
      _$TopUpTransactionFromJson(json);
}
