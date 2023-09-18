import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum BorderType { flat, rounded }

class CustomTextFormField extends StatelessWidget {
  final String? placeholder;
  final TextStyle? placeholderStyle;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? readOnly;
  final bool? showCursor;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String val)? onChanged;
  final void Function(String? val)? onSaved;
  final void Function()? onTap;
  final TextCapitalization? textCapitalization;
  final InputDecoration? decoration;
  final BorderType? borderType;
  final int? maxLength;
  final bool? obscureText;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final bool? enabled;
  final int? maxLines;
  final int? minLines;
  final String? initialValue;
  final String? hintText;
  final TextStyle? style;
  final double roundedBorderRadius;
  final Widget? suffixIconWidget;

  const CustomTextFormField({
    Key? key,
    this.placeholder,
    this.placeholderStyle,
    this.controller,
    this.focusNode,
    this.readOnly,
    this.showCursor,
    this.validator,
    this.inputFormatters,
    this.onChanged,
    this.onSaved,
    this.onTap,
    this.textCapitalization,
    this.decoration,
    this.borderType = BorderType.rounded,
    this.maxLength,
    this.obscureText,
    this.textInputType,
    this.textInputAction,
    this.enabled = true,
    this.maxLines = 1,
    this.minLines,
    this.initialValue,
    this.style,
    this.hintText,
    this.roundedBorderRadius = 6,
    this.suffixIconWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly ?? false,
      showCursor: showCursor,
      onTap: onTap,
      onChanged: onChanged,
      onSaved: onSaved,
      style: style,
      obscureText: obscureText ?? false,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      cursorColor: Theme.of(context).primaryColor,
      inputFormatters: inputFormatters,
      controller: controller,
      focusNode: focusNode,
      validator: validator,
      enabled: enabled,
      autocorrect: false,
      maxLength: maxLength,
      maxLines: maxLines,
      minLines: minLines,
      textInputAction: textInputAction,
      keyboardType: textInputType,
      initialValue: initialValue,
      decoration: InputDecoration(
          errorStyle: enabled == false ? TextStyle(color: Colors.red.shade800) : null,
          alignLabelWithHint: false,
          // counter: SizedBox.shrink(),
          suffix: decoration?.suffix,
          suffixIcon: suffixIconWidget ?? decoration?.suffixIcon,
          prefixIcon: decoration?.prefixIcon,
          contentPadding: decoration?.contentPadding ?? const EdgeInsets.all(8),
          labelText: '$placeholder',
          hintText: hintText,
          focusedBorder: decoration?.focusedBorder ??
              OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Theme.of(context).primaryColor),
                borderRadius: borderType == BorderType.flat
                    ? BorderRadius.circular(0)
                    : BorderRadius.circular(roundedBorderRadius),
              ),
          enabledBorder: decoration?.enabledBorder ??
              OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.black26),
                borderRadius: borderType == BorderType.flat
                    ? BorderRadius.circular(0)
                    : BorderRadius.circular(roundedBorderRadius),
              ),
          errorBorder: decoration?.errorBorder ??
              OutlineInputBorder(
                borderSide: const BorderSide(width: 2, color: Colors.red),
                borderRadius: borderType == BorderType.flat
                    ? BorderRadius.circular(0)
                    : BorderRadius.circular(roundedBorderRadius),
              ),
          focusedErrorBorder: decoration?.focusedErrorBorder ??
              OutlineInputBorder(
                borderSide: const BorderSide(width: 2, color: Colors.red),
                borderRadius: borderType == BorderType.flat
                    ? BorderRadius.circular(0)
                    : BorderRadius.circular(roundedBorderRadius),
              ),
          disabledBorder: decoration?.disabledBorder ??
              OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.grey),
                borderRadius: borderType == BorderType.flat
                    ? BorderRadius.circular(0)
                    : BorderRadius.circular(roundedBorderRadius),
              ),
          enabled: decoration?.enabled ?? true,
          labelStyle: placeholderStyle,
          counterText: decoration?.counterText),
    );
  }
}
