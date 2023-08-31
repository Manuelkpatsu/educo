import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController controller;

  const SearchTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: CustomColor.grey600Color,
      controller: controller,
      textCapitalization: TextCapitalization.sentences,
      style: CustomTextStyle.textNormal.copyWith(color: CustomColor.grey600Color),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        fillColor: CustomColor.searchInputFillColor,
        filled: true,
        hintText: 'Search',
        hintStyle: CustomTextStyle.textNormal.copyWith(color: CustomColor.grey300Color),
        suffixIcon: const Icon(Icons.search, size: 28),
        suffixIconColor: CustomColor.grey400Color,
      ),
    );
  }
}
