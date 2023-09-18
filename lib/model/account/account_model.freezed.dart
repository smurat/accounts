// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountModel _$AccountModelFromJson(Map<String, dynamic> json) {
  return _AccountModel.fromJson(json);
}

/// @nodoc
mixin _$AccountModel {
  String? get name => throw _privateConstructorUsedError;
  String? get surName => throw _privateConstructorUsedError;
  String? get birthDate => throw _privateConstructorUsedError;
  int? get salary => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  int? get identity => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountModelCopyWith<AccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountModelCopyWith<$Res> {
  factory $AccountModelCopyWith(
          AccountModel value, $Res Function(AccountModel) then) =
      _$AccountModelCopyWithImpl<$Res, AccountModel>;
  @useResult
  $Res call(
      {String? name,
      String? surName,
      String? birthDate,
      int? salary,
      String? phoneNumber,
      int? identity,
      String? id});
}

/// @nodoc
class _$AccountModelCopyWithImpl<$Res, $Val extends AccountModel>
    implements $AccountModelCopyWith<$Res> {
  _$AccountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? surName = freezed,
    Object? birthDate = freezed,
    Object? salary = freezed,
    Object? phoneNumber = freezed,
    Object? identity = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surName: freezed == surName
          ? _value.surName
          : surName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as int?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      identity: freezed == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountModelCopyWith<$Res>
    implements $AccountModelCopyWith<$Res> {
  factory _$$_AccountModelCopyWith(
          _$_AccountModel value, $Res Function(_$_AccountModel) then) =
      __$$_AccountModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? surName,
      String? birthDate,
      int? salary,
      String? phoneNumber,
      int? identity,
      String? id});
}

/// @nodoc
class __$$_AccountModelCopyWithImpl<$Res>
    extends _$AccountModelCopyWithImpl<$Res, _$_AccountModel>
    implements _$$_AccountModelCopyWith<$Res> {
  __$$_AccountModelCopyWithImpl(
      _$_AccountModel _value, $Res Function(_$_AccountModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? surName = freezed,
    Object? birthDate = freezed,
    Object? salary = freezed,
    Object? phoneNumber = freezed,
    Object? identity = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_AccountModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surName: freezed == surName
          ? _value.surName
          : surName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as int?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      identity: freezed == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountModel implements _AccountModel {
  const _$_AccountModel(
      {this.name,
      this.surName,
      this.birthDate,
      this.salary,
      this.phoneNumber,
      this.identity,
      this.id});

  factory _$_AccountModel.fromJson(Map<String, dynamic> json) =>
      _$$_AccountModelFromJson(json);

  @override
  final String? name;
  @override
  final String? surName;
  @override
  final String? birthDate;
  @override
  final int? salary;
  @override
  final String? phoneNumber;
  @override
  final int? identity;
  @override
  final String? id;

  @override
  String toString() {
    return 'AccountModel(name: $name, surName: $surName, birthDate: $birthDate, salary: $salary, phoneNumber: $phoneNumber, identity: $identity, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surName, surName) || other.surName == surName) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.salary, salary) || other.salary == salary) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.identity, identity) ||
                other.identity == identity) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, surName, birthDate, salary, phoneNumber, identity, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountModelCopyWith<_$_AccountModel> get copyWith =>
      __$$_AccountModelCopyWithImpl<_$_AccountModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountModelToJson(
      this,
    );
  }
}

abstract class _AccountModel implements AccountModel {
  const factory _AccountModel(
      {final String? name,
      final String? surName,
      final String? birthDate,
      final int? salary,
      final String? phoneNumber,
      final int? identity,
      final String? id}) = _$_AccountModel;

  factory _AccountModel.fromJson(Map<String, dynamic> json) =
      _$_AccountModel.fromJson;

  @override
  String? get name;
  @override
  String? get surName;
  @override
  String? get birthDate;
  @override
  int? get salary;
  @override
  String? get phoneNumber;
  @override
  int? get identity;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_AccountModelCopyWith<_$_AccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}
