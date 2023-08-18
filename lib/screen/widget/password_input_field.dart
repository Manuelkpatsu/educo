import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class PasswordInputField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final FormFieldValidator<String>? validator;
  final TextCapitalization textCapitalization;
  final String hintText;
  final void Function(String)? onChanged;
  final bool? isDense;
  final EdgeInsetsGeometry contentPadding;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final VoidCallback? toggle;
  final bool? obscureText;

  const PasswordInputField({
    Key? key,
    required this.controller,
    this.inputType,
    this.inputAction,
    this.validator,
    required this.hintText,
    this.textCapitalization = TextCapitalization.none,
    this.onChanged,
    this.isDense,
    this.contentPadding = const EdgeInsets.symmetric(vertical: 12),
    this.prefixIcon,
    this.suffixIcon,
    this.toggle,
    this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      obscureText: obscureText!,
      cursorColor: CustomColor.grey900Color,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: CustomTextStyle.titleThreeNormal.copyWith(color: CustomColor.grey900Color),
      decoration: InputDecoration(
        contentPadding: contentPadding,
        isDense: isDense,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon ??
            IconButton(
              icon: Icon(
                obscureText! ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                color: CustomColor.grey500Color,
              ),
              onPressed: toggle,
            ),
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
      obscuringCharacter: '*',
      keyboardType: inputType,
      textInputAction: inputAction,
      validator: validator,
      textCapitalization: textCapitalization,
    );
  }
}
