import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:top_up_app/src/src.dart';

part 'top_up_model.freezed.dart';
part 'top_up_model.g.dart';

@freezed
class TopUpModel with _$TopUpModel {
  const factory TopUpModel({
    required TopUpOption topUpOption,
    required BeneficiaryModel beneficiary,
  }) = _TopUpModel;

  factory TopUpModel.fromJson(Map<String, dynamic> json) =>
      _$TopUpModelFromJson(json);
}
