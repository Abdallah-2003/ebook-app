import 'package:ebook_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:ebook_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:ebook_app/features/home/presentation/views/widgets/featured_book_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 32
      ),
      child: Column(
        spacing: 20,
        children: [
          CustomAppBar(),
          FeaturedBookListView()
        ],
      ),
    );
  }
}