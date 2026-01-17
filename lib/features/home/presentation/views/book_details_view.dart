import 'package:ebook_app/features/home/data/models/books_model/books_model.dart';
import 'package:ebook_app/features/home/presentation/view%20model/similar_books_cubit/similar_books_cubit.dart';
import 'package:ebook_app/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({required this.booksModel, super.key});

  final BooksModel booksModel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {


  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
      category: widget.booksModel.volumeInfo.categories![0]
    );
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: BookDetailsViewBody()));
  }
}
