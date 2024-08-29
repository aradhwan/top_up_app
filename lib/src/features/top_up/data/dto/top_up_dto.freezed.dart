// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_up_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopUpDto _$TopUpDtoFromJson(Map<String, dynamic> json) {
  return _TopUpDto.fromJson(json);
}

/// @nodoc
mixin _$TopUpDto {
  TopUpOptionDto get topUpOption => throw _privateConstructorUsedError;
  BeneficiaryDto get beneficiary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopUpDtoCopyWith<TopUpDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopUpDtoCopyWith<$Res> {
  factory $TopUpDtoCopyWith(TopUpDto value, $Res Function(TopUpDto) then) =
      _$TopUpDtoCopyWithImpl<$Res, TopUpDto>;
  @useResult
  $Res call({TopUpOptionDto topUpOption, BeneficiaryDto beneficiary});

  $TopUpOptionDtoCopyWith<$Res> get topUpOption;
  $BeneficiaryDtoCopyWith<$Res> get beneficiary;
}

/// @nodoc
class _$TopUpDtoCopyWithImpl<$Res, $Val extends TopUpDto>
    implements $TopUpDtoCopyWith<$Res> {
  _$TopUpDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topUpOption = null,
    Object? beneficiary = null,
  }) {
    return _then(_value.copyWith(
      topUpOption: null == topUpOption
          ? _value.topUpOption
          : topUpOption // ignore: cast_nullable_to_non_nullable
              as TopUpOptionDto,
      beneficiary: null == beneficiary
          ? _value.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as BeneficiaryDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TopUpOptionDtoCopyWith<$Res> get topUpOption {
    return $TopUpOptionDtoCopyWith<$Res>(_value.topUpOption, (value) {
      return _then(_value.copyWith(topUpOption: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BeneficiaryDtoCopyWith<$Res> get beneficiary {
    return $BeneficiaryDtoCopyWith<$Res>(_value.beneficiary, (value) {
      return _then(_value.copyWith(beneficiary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopUpDtoImplCopyWith<$Res>
    implements $TopUpDtoCopyWith<$Res> {
  factory _$$TopUpDtoImplCopyWith(
          _$TopUpDtoImpl value, $Res Function(_$TopUpDtoImpl) then) =
      __$$TopUpDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TopUpOptionDto topUpOption, BeneficiaryDto beneficiary});

  @override
  $TopUpOptionDtoCopyWith<$Res> get topUpOption;
  @override
  $BeneficiaryDtoCopyWith<$Res> get beneficiary;
}

/// @nodoc
class __$$TopUpDtoImplCopyWithImpl<$Res>
    extends _$TopUpDtoCopyWithImpl<$Res, _$TopUpDtoImpl>
    implements _$$TopUpDtoImplCopyWith<$Res> {
  __$$TopUpDtoImplCopyWithImpl(
      _$TopUpDtoImpl _value, $Res Function(_$TopUpDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topUpOption = null,
    Object? beneficiary = null,
  }) {
    return _then(_$TopUpDtoImpl(
      topUpOption: null == topUpOption
          ? _value.topUpOption
          : topUpOption // ignore: cast_nullable_to_non_nullable
              as TopUpOptionDto,
      beneficiary: null == beneficiary
          ? _value.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as BeneficiaryDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopUpDtoImpl implements _TopUpDto {
  const _$TopUpDtoImpl({required this.topUpOption, required this.beneficiary});

  factory _$TopUpDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopUpDtoImplFromJson(json);

  @override
  final TopUpOptionDto topUpOption;
  @override
  final BeneficiaryDto beneficiary;

  @override
  String toString() {
    return 'TopUpDto(topUpOption: $topUpOption, beneficiary: $beneficiary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopUpDtoImpl &&
            (identical(other.topUpOption, topUpOption) ||
                other.topUpOption == topUpOption) &&
            (identical(other.beneficiary, beneficiary) ||
                other.beneficiary == beneficiary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, topUpOption, beneficiary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopUpDtoImplCopyWith<_$TopUpDtoImpl> get copyWith =>
      __$$TopUpDtoImplCopyWithImpl<_$TopUpDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopUpDtoImplToJson(
      this,
    );
  }
}

abstract class _TopUpDto implements TopUpDto {
  const factory _TopUpDto(
      {required final TopUpOptionDto topUpOption,
      required final BeneficiaryDto beneficiary}) = _$TopUpDtoImpl;

  factory _TopUpDto.fromJson(Map<String, dynamic> json) =
      _$TopUpDtoImpl.fromJson;

  @override
  TopUpOptionDto get topUpOption;
  @override
  BeneficiaryDto get beneficiary;
  @override
  @JsonKey(ignore: true)
  _$$TopUpDtoImplCopyWith<_$TopUpDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
