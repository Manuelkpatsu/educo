import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double? height;
  final double? width;
  final Widget widget;
  final double borderRadius;
  final Color foregroundColor;
  final Color backgroundColor;

  const CustomButton({
    Key? key,
    required this.onPressed,
    this.height = 60,
    this.width = double.infinity,
    required this.widget,
    this.borderRadius = 6,
    this.foregroundColor = Colors.white,
    this.backgroundColor = CustomColor.primary600Color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
        textStyle: CustomTextStyle.textMedium,
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor,
        minimumSize: Size(width!, height!),
      ),
      child: widget,
    );
  }
}
