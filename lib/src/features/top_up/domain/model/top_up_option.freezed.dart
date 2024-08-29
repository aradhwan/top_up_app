// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_up_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopUpOption _$TopUpOptionFromJson(Map<String, dynamic> json) {
  return _TopUpOption.fromJson(json);
}

/// @nodoc
mixin _$TopUpOption {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopUpOptionCopyWith<TopUpOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopUpOptionCopyWith<$Res> {
  factory $TopUpOptionCopyWith(
          TopUpOption value, $Res Function(TopUpOption) then) =
      _$TopUpOptionCopyWithImpl<$Res, TopUpOption>;
  @useResult
  $Res call({String id, String name, double value});
}

/// @nodoc
class _$TopUpOptionCopyWithImpl<$Res, $Val extends TopUpOption>
    implements $TopUpOptionCopyWith<$Res> {
  _$TopUpOptionCopyWithImpl(this._value, this._then);

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
abstract class _$$TopUpOptionImplCopyWith<$Res>
    implements $TopUpOptionCopyWith<$Res> {
  factory _$$TopUpOptionImplCopyWith(
          _$TopUpOptionImpl value, $Res Function(_$TopUpOptionImpl) then) =
      __$$TopUpOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, double value});
}

/// @nodoc
class __$$TopUpOptionImplCopyWithImpl<$Res>
    extends _$TopUpOptionCopyWithImpl<$Res, _$TopUpOptionImpl>
    implements _$$TopUpOptionImplCopyWith<$Res> {
  __$$TopUpOptionImplCopyWithImpl(
      _$TopUpOptionImpl _value, $Res Function(_$TopUpOptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$TopUpOptionImpl(
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
class _$TopUpOptionImpl implements _TopUpOption {
  const _$TopUpOptionImpl(
      {required this.id, required this.name, required this.value});

  factory _$TopUpOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopUpOptionImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final double value;

  @override
  String toString() {
    return 'TopUpOption(id: $id, name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopUpOptionImpl &&
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
  _$$TopUpOptionImplCopyWith<_$TopUpOptionImpl> get copyWith =>
      __$$TopUpOptionImplCopyWithImpl<_$TopUpOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopUpOptionImplToJson(
      this,
    );
  }
}

abstract class _TopUpOption implements TopUpOption {
  const factory _TopUpOption(
      {required final String id,
      required final String name,
      required final double value}) = _$TopUpOptionImpl;

  factory _TopUpOption.fromJson(Map<String, dynamic> json) =
      _$TopUpOptionImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$TopUpOptionImplCopyWith<_$TopUpOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
