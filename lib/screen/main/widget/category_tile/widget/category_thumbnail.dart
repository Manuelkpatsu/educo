import 'package:flutter/material.dart';

class CategoryThumbnail extends StatelessWidget {
  final int id;
  final VoidCallback? onTap;

  const CategoryThumbnail({super.key, required this.id, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(4),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Image.asset(
          'assets/images/categories/$id.png',
          height: 140,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
