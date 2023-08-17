import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double? height;
  final double? width;
  final Widget widget;
  final double borderRadius;
  final Color foregroundColor;
  final Color borderColor;

  const CustomOutlineButton({
    Key? key,
    required this.onPressed,
    this.height = 60,
    this.width = double.infinity,
    required this.widget,
    this.borderRadius = 6,
    this.foregroundColor = CustomColor.primary600Color,
    this.borderColor = CustomColor.grey100Color,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        textStyle: CustomTextStyle.textMedium,
        elevation: 0,
        foregroundColor: foregroundColor,
        side: BorderSide(color: borderColor, width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
        minimumSize: Size(width!, height!),
      ),
      child: widget,
    );
  }
}
