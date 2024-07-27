// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beneficiary_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BeneficiaryDto _$BeneficiaryDtoFromJson(Map<String, dynamic> json) {
  return _BeneficiaryDto.fromJson(json);
}

/// @nodoc
mixin _$BeneficiaryDto {
  String get nickname => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeneficiaryDtoCopyWith<BeneficiaryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeneficiaryDtoCopyWith<$Res> {
  factory $BeneficiaryDtoCopyWith(
          BeneficiaryDto value, $Res Function(BeneficiaryDto) then) =
      _$BeneficiaryDtoCopyWithImpl<$Res, BeneficiaryDto>;
  @useResult
  $Res call({String nickname, String phoneNumber});
}

/// @nodoc
class _$BeneficiaryDtoCopyWithImpl<$Res, $Val extends BeneficiaryDto>
    implements $BeneficiaryDtoCopyWith<$Res> {
  _$BeneficiaryDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$BeneficiaryDtoImplCopyWith<$Res>
    implements $BeneficiaryDtoCopyWith<$Res> {
  factory _$$BeneficiaryDtoImplCopyWith(_$BeneficiaryDtoImpl value,
          $Res Function(_$BeneficiaryDtoImpl) then) =
      __$$BeneficiaryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nickname, String phoneNumber});
}

/// @nodoc
class __$$BeneficiaryDtoImplCopyWithImpl<$Res>
    extends _$BeneficiaryDtoCopyWithImpl<$Res, _$BeneficiaryDtoImpl>
    implements _$$BeneficiaryDtoImplCopyWith<$Res> {
  __$$BeneficiaryDtoImplCopyWithImpl(
      _$BeneficiaryDtoImpl _value, $Res Function(_$BeneficiaryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$BeneficiaryDtoImpl(
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
class _$BeneficiaryDtoImpl implements _BeneficiaryDto {
  const _$BeneficiaryDtoImpl(
      {required this.nickname, required this.phoneNumber});

  factory _$BeneficiaryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeneficiaryDtoImplFromJson(json);

  @override
  final String nickname;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'BeneficiaryDto(nickname: $nickname, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiaryDtoImpl &&
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
  _$$BeneficiaryDtoImplCopyWith<_$BeneficiaryDtoImpl> get copyWith =>
      __$$BeneficiaryDtoImplCopyWithImpl<_$BeneficiaryDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeneficiaryDtoImplToJson(
      this,
    );
  }
}

abstract class _BeneficiaryDto implements BeneficiaryDto {
  const factory _BeneficiaryDto(
      {required final String nickname,
      required final String phoneNumber}) = _$BeneficiaryDtoImpl;

  factory _BeneficiaryDto.fromJson(Map<String, dynamic> json) =
      _$BeneficiaryDtoImpl.fromJson;

  @override
  String get nickname;
  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$BeneficiaryDtoImplCopyWith<_$BeneficiaryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
