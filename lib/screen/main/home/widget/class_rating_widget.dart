import 'package:educo/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'class_rating_text.dart';

class CourseRatingWidget extends StatelessWidget {
  final double rating;

  const CourseRatingWidget({Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          ClassRatingText(rating: rating),
          const SizedBox(width: 3),
          RatingBar(
            initialRating: rating,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: rating.toInt(),
            itemSize: 14,
            ignoreGestures: true,
            ratingWidget: RatingWidget(
              full: const Icon(Icons.star, color: CustomColor.starFilledColor),
              half: const Icon(Icons.star_half, color: CustomColor.starFilledColor),
              empty: const Icon(Icons.star, color: CustomColor.grey400Color),
            ),
            itemPadding: const EdgeInsets.symmetric(horizontal: 1),
            onRatingUpdate: (rating) {},
          ),
        ],
      ),
    );
  }
}
