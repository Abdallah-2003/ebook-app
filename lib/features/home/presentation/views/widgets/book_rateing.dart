import 'package:ebook_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRateing extends StatelessWidget {
  const BookRateing({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 6.3,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 16,
        ),
        const Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        Text(
          '(4564)',
          style: Styles.textStyle14.copyWith(
            color: const Color(0xff707070)
          ),
        )
      ],
    );
  }
}