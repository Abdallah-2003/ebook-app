import 'package:ebook_app/core/widgets/custom_error_widget.dart';
import 'package:ebook_app/core/widgets/custom_loading_indicator.dart';
import 'package:ebook_app/features/home/data/models/books_model/books_model.dart';
import 'package:ebook_app/features/home/presentation/view%20model/similar_books_cubit/similar_books_cubit.dart';
import 'package:ebook_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimiliarFeaturedBookListView extends StatelessWidget {
  const SimiliarFeaturedBookListView({super.key, required this.booksModel});

  final BooksModel booksModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: CustomBookItem(
                    imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail
                  ),
                );
              },
            ),
          );
        } else if(state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
