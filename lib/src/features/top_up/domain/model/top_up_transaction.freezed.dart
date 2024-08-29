// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_up_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopUpTransaction _$TopUpTransactionFromJson(Map<String, dynamic> json) {
  return _TopUpTransaction.fromJson(json);
}

/// @nodoc
mixin _$TopUpTransaction {
  String get id => throw _privateConstructorUsedError;
  String get beneficiaryName => throw _privateConstructorUsedError;
  String get beneficiaryNumber => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopUpTransactionCopyWith<TopUpTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopUpTransactionCopyWith<$Res> {
  factory $TopUpTransactionCopyWith(
          TopUpTransaction value, $Res Function(TopUpTransaction) then) =
      _$TopUpTransactionCopyWithImpl<$Res, TopUpTransaction>;
  @useResult
  $Res call(
      {String id,
      String beneficiaryName,
      String beneficiaryNumber,
      double amount,
      DateTime date});
}

/// @nodoc
class _$TopUpTransactionCopyWithImpl<$Res, $Val extends TopUpTransaction>
    implements $TopUpTransactionCopyWith<$Res> {
  _$TopUpTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? beneficiaryName = null,
    Object? beneficiaryNumber = null,
    Object? amount = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      beneficiaryName: null == beneficiaryName
          ? _value.beneficiaryName
          : beneficiaryName // ignore: cast_nullable_to_non_nullable
              as String,
      beneficiaryNumber: null == beneficiaryNumber
          ? _value.beneficiaryNumber
          : beneficiaryNumber // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopUpTransactionImplCopyWith<$Res>
    implements $TopUpTransactionCopyWith<$Res> {
  factory _$$TopUpTransactionImplCopyWith(_$TopUpTransactionImpl value,
          $Res Function(_$TopUpTransactionImpl) then) =
      __$$TopUpTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String beneficiaryName,
      String beneficiaryNumber,
      double amount,
      DateTime date});
}

/// @nodoc
class __$$TopUpTransactionImplCopyWithImpl<$Res>
    extends _$TopUpTransactionCopyWithImpl<$Res, _$TopUpTransactionImpl>
    implements _$$TopUpTransactionImplCopyWith<$Res> {
  __$$TopUpTransactionImplCopyWithImpl(_$TopUpTransactionImpl _value,
      $Res Function(_$TopUpTransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? beneficiaryName = null,
    Object? beneficiaryNumber = null,
    Object? amount = null,
    Object? date = null,
  }) {
    return _then(_$TopUpTransactionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      beneficiaryName: null == beneficiaryName
          ? _value.beneficiaryName
          : beneficiaryName // ignore: cast_nullable_to_non_nullable
              as String,
      beneficiaryNumber: null == beneficiaryNumber
          ? _value.beneficiaryNumber
          : beneficiaryNumber // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopUpTransactionImpl implements _TopUpTransaction {
  const _$TopUpTransactionImpl(
      {required this.id,
      required this.beneficiaryName,
      required this.beneficiaryNumber,
      required this.amount,
      required this.date});

  factory _$TopUpTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopUpTransactionImplFromJson(json);

  @override
  final String id;
  @override
  final String beneficiaryName;
  @override
  final String beneficiaryNumber;
  @override
  final double amount;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'TopUpTransaction(id: $id, beneficiaryName: $beneficiaryName, beneficiaryNumber: $beneficiaryNumber, amount: $amount, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopUpTransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.beneficiaryName, beneficiaryName) ||
                other.beneficiaryName == beneficiaryName) &&
            (identical(other.beneficiaryNumber, beneficiaryNumber) ||
                other.beneficiaryNumber == beneficiaryNumber) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, beneficiaryName, beneficiaryNumber, amount, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopUpTransactionImplCopyWith<_$TopUpTransactionImpl> get copyWith =>
      __$$TopUpTransactionImplCopyWithImpl<_$TopUpTransactionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopUpTransactionImplToJson(
      this,
    );
  }
}

abstract class _TopUpTransaction implements TopUpTransaction {
  const factory _TopUpTransaction(
      {required final String id,
      required final String beneficiaryName,
      required final String beneficiaryNumber,
      required final double amount,
      required final DateTime date}) = _$TopUpTransactionImpl;

  factory _TopUpTransaction.fromJson(Map<String, dynamic> json) =
      _$TopUpTransactionImpl.fromJson;

  @override
  String get id;
  @override
  String get beneficiaryName;
  @override
  String get beneficiaryNumber;
  @override
  double get amount;
  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$TopUpTransactionImplCopyWith<_$TopUpTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
