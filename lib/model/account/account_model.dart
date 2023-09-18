import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'account_model.freezed.dart';
part 'account_model.g.dart';

List<AccountModel> accountListModelFromJson(String str) =>
    List<AccountModel>.from(json.decode(str).map((x) => AccountModel.fromJson(x)));

String accountListModelToJson(List<AccountModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class AccountModel with _$AccountModel {
  const factory AccountModel({
    String? name,
    String? surName,
    String? birthDate,
    int? salary,
    String? phoneNumber,
    int? identity,
    String? id,
  }) = _AccountModel;

  factory AccountModel.fromJson(Map<String, dynamic> json) => _$AccountModelFromJson(json);
}
