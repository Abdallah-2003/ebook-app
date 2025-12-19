import 'package:ebook_app/core/utils/styles.dart';
import 'package:ebook_app/features/home/presentation/views/widgets/book_action.dart';
import 'package:ebook_app/features/home/presentation/views/widgets/book_rateing.dart';
import 'package:ebook_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.23
          ),
          child: const CustomBookItem(),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 36,
            bottom: 6
          ),
          child: Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
        ),
        const Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 6
          ),
          child: BookRateing(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
        const SizedBox(
          height: 37,
        ),
        const BookAction(),
        const SizedBox(
          height: 37,
        ),
      ],
    );
  }
}