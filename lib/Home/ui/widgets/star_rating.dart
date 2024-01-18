import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final double rating;
  final int starCount;
  final double size;
  final Color color;
  final IconData filledStar;
  final IconData unfilledStar;

  StarRating({
    required this.rating,
    this.starCount = 5,
    this.size = 20.0,
    this.color = Colors.orange,
    this.filledStar = Icons.star,
    this.unfilledStar = Icons.star_border,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(starCount, (index) {
        double ratingValue = index + 1.0;
        return Icon(
          ratingValue <= rating
              ? filledStar
              : ratingValue - 0.5 <= rating
                  ? Icons.star_half
                  : unfilledStar,
          color: color,
          size: size,
        );
      }),
    );
  }
}
