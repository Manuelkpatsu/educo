import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final FormFieldValidator<String>? validator;
  final TextCapitalization textCapitalization;
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Widget? prefix;
  final BoxConstraints? prefixIconConstraints;
  final void Function(String)? onChanged;
  final int? maxLines;
  final List<TextInputFormatter>? inputFormatters;
  final Iterable<String>? autofillHints;
  final void Function()? onTap;
  final void Function(String?)? onSaved;
  final bool autofocus;
  final EdgeInsetsGeometry contentPadding;
  final bool? enabled;
  final bool readOnly;
  final void Function(String)? onFieldSubmitted;
  final bool? isDense;
  final double borderRadius;

  const TextInputField({
    Key? key,
    required this.controller,
    this.inputType,
    this.inputAction,
    this.validator,
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.textCapitalization = TextCapitalization.none,
    this.onChanged,
    this.maxLines,
    this.inputFormatters,
    this.autofillHints,
    this.onTap,
    this.onSaved,
    this.autofocus = false,
    this.contentPadding = const EdgeInsets.symmetric(vertical: 12),
    this.enabled,
    this.readOnly = false,
    this.onFieldSubmitted,
    this.isDense,
    this.borderRadius = 49,
    this.prefix,
    this.prefixIconConstraints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      controller: controller,
      cursorColor: CustomColor.grey900Color,
      onChanged: onChanged,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: CustomTextStyle.titleThreeNormal.copyWith(color: CustomColor.grey900Color),
      inputFormatters: inputFormatters,
      autofillHints: autofillHints,
      onTap: onTap,
      onSaved: onSaved,
      enabled: enabled,
      readOnly: readOnly,
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        isDense: isDense,
        contentPadding: contentPadding,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        prefix: prefix,
        prefixIconConstraints: prefixIconConstraints,
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: CustomColor.grey100Color, width: 1.0),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: CustomColor.grey100Color, width: 1.0),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: CustomColor.grey500Color, width: 1.0),
        ),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: CustomColor.error500Color, width: 1.0),
        ),
        focusedErrorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: CustomColor.error500Color, width: 1.0),
        ),
        hintText: hintText,
        prefixIconColor: CustomColor.grey500Color,
        suffixIconColor: CustomColor.grey500Color,
        hintStyle: CustomTextStyle.titleThreeNormal.copyWith(color: CustomColor.grey500Color),
        errorStyle: CustomTextStyle.captionTwo.copyWith(color: CustomColor.error500Color),
      ),
      keyboardType: inputType,
      textInputAction: inputAction,
      validator: validator,
      textCapitalization: textCapitalization,
      maxLines: maxLines,
    );
  }
}
