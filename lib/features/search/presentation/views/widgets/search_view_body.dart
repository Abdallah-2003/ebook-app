import 'package:ebook_app/core/utils/styles.dart';
import 'package:ebook_app/features/search/presentation/views/widgets/custom_search_field.dart';
import 'package:ebook_app/features/search/presentation/views/widgets/search_results_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          CustomSearchField(),
          SizedBox(
            height: 12,
          ),
          Text(
            'Search Results',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 12,
          ),
          SearchResultsListView()
        ],
      ),
    );
  }
}