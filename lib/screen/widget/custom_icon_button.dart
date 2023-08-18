import 'package:educo/theme/custom_color.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String action;
  final Widget icon;

  const CustomIconButton(
      {super.key, required this.onPressed, required this.action, required this.icon});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: onPressed,
      widget: Row(
        children: [
          icon,
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text(action),
            ),
          ),
        ],
      ),
      backgroundColor: CustomColor.grey50Color,
      foregroundColor: CustomColor.grey900Color,
    );
  }
}
