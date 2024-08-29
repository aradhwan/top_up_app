// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_up_option_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopUpOptionDto _$TopUpOptionDtoFromJson(Map<String, dynamic> json) {
  return _TopUpOptionDto.fromJson(json);
}

/// @nodoc
mixin _$TopUpOptionDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopUpOptionDtoCopyWith<TopUpOptionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopUpOptionDtoCopyWith<$Res> {
  factory $TopUpOptionDtoCopyWith(
          TopUpOptionDto value, $Res Function(TopUpOptionDto) then) =
      _$TopUpOptionDtoCopyWithImpl<$Res, TopUpOptionDto>;
  @useResult
  $Res call({String id, String name, double value});
}

/// @nodoc
class _$TopUpOptionDtoCopyWithImpl<$Res, $Val extends TopUpOptionDto>
    implements $TopUpOptionDtoCopyWith<$Res> {
  _$TopUpOptionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopUpOptionDtoImplCopyWith<$Res>
    implements $TopUpOptionDtoCopyWith<$Res> {
  factory _$$TopUpOptionDtoImplCopyWith(_$TopUpOptionDtoImpl value,
          $Res Function(_$TopUpOptionDtoImpl) then) =
      __$$TopUpOptionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, double value});
}

/// @nodoc
class __$$TopUpOptionDtoImplCopyWithImpl<$Res>
    extends _$TopUpOptionDtoCopyWithImpl<$Res, _$TopUpOptionDtoImpl>
    implements _$$TopUpOptionDtoImplCopyWith<$Res> {
  __$$TopUpOptionDtoImplCopyWithImpl(
      _$TopUpOptionDtoImpl _value, $Res Function(_$TopUpOptionDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$TopUpOptionDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopUpOptionDtoImpl implements _TopUpOptionDto {
  const _$TopUpOptionDtoImpl(
      {required this.id, required this.name, required this.value});

  factory _$TopUpOptionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopUpOptionDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final double value;

  @override
  String toString() {
    return 'TopUpOptionDto(id: $id, name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopUpOptionDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopUpOptionDtoImplCopyWith<_$TopUpOptionDtoImpl> get copyWith =>
      __$$TopUpOptionDtoImplCopyWithImpl<_$TopUpOptionDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopUpOptionDtoImplToJson(
      this,
    );
  }
}

abstract class _TopUpOptionDto implements TopUpOptionDto {
  const factory _TopUpOptionDto(
      {required final String id,
      required final String name,
      required final double value}) = _$TopUpOptionDtoImpl;

  factory _TopUpOptionDto.fromJson(Map<String, dynamic> json) =
      _$TopUpOptionDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$TopUpOptionDtoImplCopyWith<_$TopUpOptionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
