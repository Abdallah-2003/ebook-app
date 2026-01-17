import 'package:ebook_app/core/utils/styles.dart';
import 'package:ebook_app/features/home/data/models/books_model/books_model.dart';
import 'package:ebook_app/features/home/presentation/views/widgets/similiar_featured_book_list_view.dart';
import 'package:flutter/material.dart';

class FeaturedBookSection extends StatelessWidget {
  const FeaturedBookSection({super.key, required this.booksModel});

  final BooksModel booksModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const Align(
            alignment: AlignmentGeometry.centerLeft,
            child: Text('You can also like', style: Styles.textStyle18),
          ),
          const SizedBox(height: 10),
          SimiliarFeaturedBookListView(
            booksModel: booksModel,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
