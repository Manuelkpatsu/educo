import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'EduCo',
      textAlign: TextAlign.center,
      style: GoogleFonts.archivoBlack(
        textStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.2,
          fontSize: 50,
        ),
      ),
    );
  }
}
