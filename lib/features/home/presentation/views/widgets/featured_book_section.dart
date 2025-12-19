import 'package:ebook_app/core/utils/styles.dart';
import 'package:ebook_app/features/home/presentation/views/widgets/similiar_featured_book_list_view.dart';
import 'package:flutter/material.dart';

class FeaturedBookSection extends StatelessWidget {
  const FeaturedBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children: [
          Align(
            alignment: AlignmentGeometry.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.textStyle18,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SimiliarFeaturedBookListView(),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}