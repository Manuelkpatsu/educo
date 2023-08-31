import 'package:educo/model/category.dart';
import 'package:flutter/material.dart';

import 'widget/category_name_text.dart';
import 'widget/category_thumbnail.dart';

class CategoryTile extends StatelessWidget {
  final Category category;
  final VoidCallback? onTap;

  CategoryTile({
    Key? key,
    required this.category,
    required this.onTap,
  }) : super(key: Key('${category.id}'));

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        CategoryThumbnail(id: category.id, onTap: onTap),
        CategoryNameText(name: category.name),
      ],
    );
  }
}
