// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountModel _$$_AccountModelFromJson(Map<String, dynamic> json) =>
    _$_AccountModel(
      name: json['name'] as String?,
      surName: json['surName'] as String?,
      birthDate: json['birthDate'] as String?,
      salary: json['salary'] as int?,
      phoneNumber: json['phoneNumber'] as String?,
      identity: json['identity'] as int?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_AccountModelToJson(_$_AccountModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'surName': instance.surName,
      'birthDate': instance.birthDate,
      'salary': instance.salary,
      'phoneNumber': instance.phoneNumber,
      'identity': instance.identity,
      'id': instance.id,
    };
