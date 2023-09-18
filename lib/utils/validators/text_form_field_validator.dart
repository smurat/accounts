import 'package:accounts_app/localization/app_localizations_context.dart';
import 'package:accounts_app/utils/validators/tc_validator.dart';
import 'package:flutter/material.dart';

class FormFieldValidators {
  static String? requiredField(String? value, {required BuildContext context}) {
    if (value == null || value.isEmpty) {
      return context.loc.requiredField;
    }
    return null;
  }

  static String? tcCheck(String? value, {required BuildContext context}) {
    if (value == null || value.isEmpty) {
      return context.loc.requiredField;
    }
    if (value.length != 11) {
      return context.loc.wrongCharLength;
    }
    if (!Tckn().check(value)) {
      return context.loc.wrongIdentity;
    }
    return null;
  }

  static String? wrongDate(String? value, {required BuildContext context}) {
    if (value == null || value.isEmpty) {
      return context.loc.requiredField;
    }
    final components = value.split("/");
    if (components.length == 3) {
      final day = int.tryParse(components[0]);
      final month = int.tryParse(components[1]);
      final year = int.tryParse(components[2]);
      if (day != null && month != null && year != null) {
        final date = DateTime(year, month, day);
        if (date.year == year && date.month == month && date.day == day) {
          return null;
        }
      }
    }
    return context.loc.wrongDate;
  }
}
