import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_up_transaction_dto.freezed.dart';
part 'top_up_transaction_dto.g.dart';

@freezed
class TopUpTransactionDto with _$TopUpTransactionDto {
  const factory TopUpTransactionDto({
    required String id,
    required String beneficiaryName,
    required String beneficiaryNumber,
    required double amount,
    required DateTime date,
  }) = _TopUpTransactionDto;

  factory TopUpTransactionDto.fromJson(Map<String, dynamic> json) =>
      _$TopUpTransactionDtoFromJson(json);
}
