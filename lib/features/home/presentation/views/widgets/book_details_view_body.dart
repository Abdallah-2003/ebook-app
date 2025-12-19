import 'package:ebook_app/core/utils/styles.dart';
import 'package:ebook_app/features/home/presentation/views/widgets/book_action.dart';
import 'package:ebook_app/features/home/presentation/views/widgets/book_rateing.dart';
import 'package:ebook_app/features/home/presentation/views/widgets/custom_book_details_view_appbar.dart';
import 'package:ebook_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:ebook_app/features/home/presentation/views/widgets/similiar_featured_book_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsViewAppbar(),
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
                const Expanded(
                  child: Align(
                    alignment: AlignmentGeometry.centerLeft,
                    child: Text(
                      'You can also like',
                      style: Styles.textStyle18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SimiliarFeaturedBookListView(),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        )
      ]
    );
  }
}