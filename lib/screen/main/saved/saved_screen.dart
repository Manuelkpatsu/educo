import 'package:flutter/material.dart';

class SavedScreen extends StatelessWidget {
  static const routeName = '/saved';

  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Saved Screen'),
      ),
    );
  }
}
