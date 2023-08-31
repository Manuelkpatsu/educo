import 'package:flutter/material.dart';

import 'category_title_text.dart';
import 'see_more_button.dart';

class CategoryTitleWidget extends StatelessWidget {
  final String categoryTitle;
  final VoidCallback? onTap;

  const CategoryTitleWidget({
    super.key,
    required this.categoryTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CategoryTitleText(text: categoryTitle),
          const SizedBox(width: 10),
          SeeMoreButton(onTap: onTap),
        ],
      ),
    );
  }
}
