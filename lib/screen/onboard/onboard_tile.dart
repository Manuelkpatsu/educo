import 'package:educo/model/onboard_data.dart';
import 'package:flutter/material.dart';

import 'widget/onboard_description_text.dart';
import 'widget/onboard_illustration.dart';
import 'widget/onboard_title_text.dart';

class OnboardTile extends StatelessWidget {
  final OnboardData data;

  const OnboardTile({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnboardIllustration(image: data.image),
        const SizedBox(height: 60),
        OnboardTitleText(title: data.title),
        const SizedBox(height: 20),
        OnboardDescriptionText(description: data.description),
        const SizedBox(height: 20),
      ],
    );
  }
}
