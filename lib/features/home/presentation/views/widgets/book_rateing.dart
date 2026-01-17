import 'package:ebook_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRateing extends StatelessWidget {
  const BookRateing({
    required this.rating,
    required this.pageCount,
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start, 
  });

  final MainAxisAlignment mainAxisAlignment;
  final String rating;
  final num pageCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      spacing: 6.3,
      children: [
        const Icon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4F), size: 16),
        Text(rating, style: Styles.textStyle16),
        Opacity(opacity: 0.7, child: Text(pageCount.toString(), style: Styles.textStyle14)),
      ],
    );
  }
}
