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
            child: TextButton(
              onPressed: onPressed,
              style: TextButton.styleFrom(minimumSize: const Size(78, 44)),
              child: const Text('Skip'),
            ),
          )
        : const SizedBox(height: 44);
  }
}
