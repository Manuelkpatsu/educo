import 'package:educo/screen/widget/custom_text_button.dart';
import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool isVisible;

  const SkipButton({super.key, required this.onPressed, required this.isVisible});

  @override
  Widget build(BuildContext context) {
    return isVisible
        ? Align(
            alignment: Alignment.centerRight,
            child: CustomTextButton(
              onPressed: onPressed,
              action: 'Skip',
              width: 78,
              height: 44,
              borderRadius: 4,
            ),
          )
        : const SizedBox(height: 44);
  }
}
