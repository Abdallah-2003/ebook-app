import 'package:ebook_app/core/utils/styles.dart';
import 'package:ebook_app/features/home/presentation/views/widgets/best_seller_listview.dart';
import 'package:ebook_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:ebook_app/features/home/presentation/views/widgets/featured_book_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 45,
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20,
            children: [
              CustomAppBar(),
              FeaturedBookListView(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text('Best Seller',
                style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: BestSellerListview(),
          )
        )
      ],
    );
  }
}