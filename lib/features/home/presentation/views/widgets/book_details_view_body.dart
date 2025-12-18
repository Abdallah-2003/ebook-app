import 'package:ebook_app/features/home/presentation/views/widgets/custom_book_details_view_appbar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsViewAppbar()
        ],
      ),
    );
  }
}