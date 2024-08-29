// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_up_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopUpModel _$TopUpModelFromJson(Map<String, dynamic> json) {
  return _TopUpModel.fromJson(json);
}

/// @nodoc
mixin _$TopUpModel {
  TopUpOption get topUpOption => throw _privateConstructorUsedError;
  BeneficiaryModel get beneficiary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopUpModelCopyWith<TopUpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopUpModelCopyWith<$Res> {
  factory $TopUpModelCopyWith(
          TopUpModel value, $Res Function(TopUpModel) then) =
      _$TopUpModelCopyWithImpl<$Res, TopUpModel>;
  @useResult
  $Res call({TopUpOption topUpOption, BeneficiaryModel beneficiary});

  $TopUpOptionCopyWith<$Res> get topUpOption;
  $BeneficiaryModelCopyWith<$Res> get beneficiary;
}

/// @nodoc
class _$TopUpModelCopyWithImpl<$Res, $Val extends TopUpModel>
    implements $TopUpModelCopyWith<$Res> {
  _$TopUpModelCopyWithImpl(this._value, this._then);

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
              as TopUpOption,
      beneficiary: null == beneficiary
          ? _value.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as BeneficiaryModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TopUpOptionCopyWith<$Res> get topUpOption {
    return $TopUpOptionCopyWith<$Res>(_value.topUpOption, (value) {
      return _then(_value.copyWith(topUpOption: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BeneficiaryModelCopyWith<$Res> get beneficiary {
    return $BeneficiaryModelCopyWith<$Res>(_value.beneficiary, (value) {
      return _then(_value.copyWith(beneficiary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopUpModelImplCopyWith<$Res>
    implements $TopUpModelCopyWith<$Res> {
  factory _$$TopUpModelImplCopyWith(
          _$TopUpModelImpl value, $Res Function(_$TopUpModelImpl) then) =
      __$$TopUpModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TopUpOption topUpOption, BeneficiaryModel beneficiary});

  @override
  $TopUpOptionCopyWith<$Res> get topUpOption;
  @override
  $BeneficiaryModelCopyWith<$Res> get beneficiary;
}

/// @nodoc
class __$$TopUpModelImplCopyWithImpl<$Res>
    extends _$TopUpModelCopyWithImpl<$Res, _$TopUpModelImpl>
    implements _$$TopUpModelImplCopyWith<$Res> {
  __$$TopUpModelImplCopyWithImpl(
      _$TopUpModelImpl _value, $Res Function(_$TopUpModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topUpOption = null,
    Object? beneficiary = null,
  }) {
    return _then(_$TopUpModelImpl(
      topUpOption: null == topUpOption
          ? _value.topUpOption
          : topUpOption // ignore: cast_nullable_to_non_nullable
              as TopUpOption,
      beneficiary: null == beneficiary
          ? _value.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as BeneficiaryModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopUpModelImpl implements _TopUpModel {
  const _$TopUpModelImpl(
      {required this.topUpOption, required this.beneficiary});

  factory _$TopUpModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopUpModelImplFromJson(json);

  @override
  final TopUpOption topUpOption;
  @override
  final BeneficiaryModel beneficiary;

  @override
  String toString() {
    return 'TopUpModel(topUpOption: $topUpOption, beneficiary: $beneficiary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopUpModelImpl &&
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
  _$$TopUpModelImplCopyWith<_$TopUpModelImpl> get copyWith =>
      __$$TopUpModelImplCopyWithImpl<_$TopUpModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopUpModelImplToJson(
      this,
    );
  }
}

abstract class _TopUpModel implements TopUpModel {
  const factory _TopUpModel(
      {required final TopUpOption topUpOption,
      required final BeneficiaryModel beneficiary}) = _$TopUpModelImpl;

  factory _TopUpModel.fromJson(Map<String, dynamic> json) =
      _$TopUpModelImpl.fromJson;

  @override
  TopUpOption get topUpOption;
  @override
  BeneficiaryModel get beneficiary;
  @override
  @JsonKey(ignore: true)
  _$$TopUpModelImplCopyWith<_$TopUpModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
