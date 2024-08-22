// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beneficiary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BeneficiaryModel _$BeneficiaryModelFromJson(Map<String, dynamic> json) {
  return _BeneficiaryModel.fromJson(json);
}

/// @nodoc
mixin _$BeneficiaryModel {
  String get nickname => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeneficiaryModelCopyWith<BeneficiaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeneficiaryModelCopyWith<$Res> {
  factory $BeneficiaryModelCopyWith(
          BeneficiaryModel value, $Res Function(BeneficiaryModel) then) =
      _$BeneficiaryModelCopyWithImpl<$Res, BeneficiaryModel>;
  @useResult
  $Res call({String nickname, String phoneNumber});
}

/// @nodoc
class _$BeneficiaryModelCopyWithImpl<$Res, $Val extends BeneficiaryModel>
    implements $BeneficiaryModelCopyWith<$Res> {
  _$BeneficiaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeneficiaryModelImplCopyWith<$Res>
    implements $BeneficiaryModelCopyWith<$Res> {
  factory _$$BeneficiaryModelImplCopyWith(_$BeneficiaryModelImpl value,
          $Res Function(_$BeneficiaryModelImpl) then) =
      __$$BeneficiaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nickname, String phoneNumber});
}

/// @nodoc
class __$$BeneficiaryModelImplCopyWithImpl<$Res>
    extends _$BeneficiaryModelCopyWithImpl<$Res, _$BeneficiaryModelImpl>
    implements _$$BeneficiaryModelImplCopyWith<$Res> {
  __$$BeneficiaryModelImplCopyWithImpl(_$BeneficiaryModelImpl _value,
      $Res Function(_$BeneficiaryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$BeneficiaryModelImpl(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeneficiaryModelImpl implements _BeneficiaryModel {
  const _$BeneficiaryModelImpl(
      {required this.nickname, required this.phoneNumber});

  factory _$BeneficiaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeneficiaryModelImplFromJson(json);

  @override
  final String nickname;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'BeneficiaryModel(nickname: $nickname, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiaryModelImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nickname, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeneficiaryModelImplCopyWith<_$BeneficiaryModelImpl> get copyWith =>
      __$$BeneficiaryModelImplCopyWithImpl<_$BeneficiaryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeneficiaryModelImplToJson(
      this,
    );
  }
}

abstract class _BeneficiaryModel implements BeneficiaryModel {
  const factory _BeneficiaryModel(
      {required final String nickname,
      required final String phoneNumber}) = _$BeneficiaryModelImpl;

  factory _BeneficiaryModel.fromJson(Map<String, dynamic> json) =
      _$BeneficiaryModelImpl.fromJson;

  @override
  String get nickname;
  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$BeneficiaryModelImplCopyWith<_$BeneficiaryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
