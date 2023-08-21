import 'package:flutter/material.dart';

class CheckEmailImage extends StatelessWidget {
  const CheckEmailImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/email.png',
      width: 231,
      height: 210,
      fit: BoxFit.contain,
    );
  }
}
