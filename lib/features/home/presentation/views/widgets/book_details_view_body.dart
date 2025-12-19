import 'package:ebook_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:ebook_app/features/home/presentation/views/widgets/custom_book_details_view_appbar.dart';
import 'package:ebook_app/features/home/presentation/views/widgets/featured_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          fillOverscroll: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsViewAppbar(),
                BookDetailsSection(),
                FeaturedBookSection()
              ],
            ),
          ),
        )
      ]
    );
  }
}