import 'package:educo/screen/widget/custom_text_button.dart';
import 'package:educo/theme/custom_color.dart';
import 'package:flutter/material.dart';

import 'try_free_trial_text.dart';

class FreeTrialWidget extends StatelessWidget {
  const FreeTrialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: CustomColor.searchInputFillColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          const TryFreeTrialText(),
          const SizedBox(height: 30),
          CustomTextButton(
            onPressed: () {},
            action: 'Get free trial',
            height: 44,
            width: 140,
            borderRadius: 4,
          ),
        ],
      ),
    );
  }
}
