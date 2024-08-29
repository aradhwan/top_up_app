import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:top_up_app/src/src.dart';

class CustomTextFormField extends StatelessWidget {
  final String placeholder;
  final String? helperText;
  final Color? placeholderColor;
  final TextEditingController textEditingController;
  final String? Function(String? value)? validator;
  final TextInputType? textInputType;
  final Widget? suffixIcon, prefixIcon;
  final bool isObscured, enabled, isRequired;
  final int? maxLength, minLines, maxLines;
  final Color? backgroundColor;
  final InputBorder? errorBorder,
      focusedBorder,
      focusedErrorBorder,
      disabledBorder,
      enabledBorder,
      border;
  final FloatingLabelBehavior floatingLabelBehavior;
  final TextStyle? textStyle;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onTextChanged;
  final ValueChanged<String>? onSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final AutovalidateMode? autoValidateMode;

  const CustomTextFormField({
    super.key,
    required this.placeholder,
    required this.textEditingController,
    this.helperText,
    this.validator,
    this.autoValidateMode,
    this.textInputType,
    this.suffixIcon,
    this.prefixIcon,
    this.isObscured = false,
    this.enabled = true,
    this.isRequired = false,
    this.maxLength,
    this.minLines,
    this.maxLines,
    this.textInputAction,
    this.errorBorder,
    this.focusedBorder,
    this.focusedErrorBorder,
    this.disabledBorder,
    this.enabledBorder,
    this.border,
    this.backgroundColor,
    this.floatingLabelBehavior = FloatingLabelBehavior.auto,
    this.placeholderColor,
    this.textStyle,
    this.onTextChanged,
    this.onSubmitted,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: autoValidateMode,
      controller: textEditingController,
      maxLength: maxLength,
      minLines: minLines,
      maxLines: isObscured ? 1 : maxLines,
      enabled: enabled,
      obscureText: isObscured,
      keyboardType: textInputType,
      clipBehavior: Clip.hardEdge,
      textInputAction: textInputAction,
      style: textStyle,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        fillColor: backgroundColor,
        filled: backgroundColor != null,
        errorBorder: errorBorder,
        focusedBorder: focusedBorder,
        focusedErrorBorder: focusedErrorBorder,
        disabledBorder: disabledBorder,
        enabledBorder: enabledBorder,
        border: border ??
            OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        labelText: isRequired ? "$placeholder*" : placeholder,
        helperText: helperText != null && helperText!.isNotEmpty
            ? isRequired
                ? "* ${context.loc.requiredField}, $helperText"
                : helperText
            : isRequired
                ? "* ${context.loc.requiredField}"
                : null,
        labelStyle: placeholderColor != null
            ? TextStyle(color: placeholderColor)
            : Theme.of(context).inputDecorationTheme.labelStyle,
        floatingLabelBehavior: floatingLabelBehavior,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        errorMaxLines: 3,
      ),
      validator: (value) {
        if (isRequired && (value?.trim().isEmpty ?? true)) {
          return context.loc.fieldIsRequired(placeholder);
        }
        return validator != null ? validator!(value) : null;
      },
      onSaved: (value) {
        textEditingController.text = value!;
      },
      onChanged: onTextChanged,
      onFieldSubmitted: onSubmitted,
    );
  }
}
