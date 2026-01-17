import 'package:ebook_app/core/utils/styles.dart';
import 'package:ebook_app/features/home/data/models/books_model/books_model.dart';
import 'package:ebook_app/features/home/presentation/views/widgets/book_action.dart';
import 'package:ebook_app/features/home/presentation/views/widgets/book_rateing.dart';
import 'package:ebook_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.booksModel});

  final BooksModel booksModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.23,
          ),
          child: CustomBookItem(
            imageUrl: booksModel.volumeInfo.imageLinks.thumbnail,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 36, bottom: 6),
          child: Text(booksModel.volumeInfo.title ?? '', style: Styles.textStyle30, textAlign: TextAlign.center,),
        ),
        Opacity(
          opacity: 0.7,
          child: Text(booksModel.volumeInfo.authors![0], style: Styles.textStyle18),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 6),
          child: BookRateing(
            mainAxisAlignment: MainAxisAlignment.center,
            rating: '',
            pageCount: booksModel.volumeInfo.pageCount ?? 0,
          ),
        ),
        const SizedBox(height: 37),
        const BookAction(),
        const SizedBox(height: 37),
      ],
    );
  }
}
