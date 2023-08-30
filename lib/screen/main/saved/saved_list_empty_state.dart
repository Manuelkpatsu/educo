import 'package:educo/screen/main/widget/empty_state_image.dart';
import 'package:flutter/material.dart';

import 'widget/nothing_info_text.dart';
import 'widget/nothing_here_text.dart';
import 'widget/recommended_button.dart';

class SavedListEmptyState extends StatelessWidget {
  const SavedListEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const EmptyStateImage(image: 'assets/images/email.png'),
                const SizedBox(height: 60),
                const NothingHereText(),
                const SizedBox(height: 20),
                const NothingInfoText(),
                const SizedBox(height: 60),
                RecommendedButton(onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
