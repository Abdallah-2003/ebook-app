import 'package:ebook_app/core/utils/assets_data.dart';
import 'package:ebook_app/core/utils/styles.dart';
import 'package:ebook_app/features/home/presentation/views/widgets/book_rateing.dart';
import 'package:flutter/material.dart';

class BestSellerListviewItem extends StatelessWidget {
  const BestSellerListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        spacing: 30,
        children: [
          AspectRatio(
            aspectRatio: 2.2 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
                image: const DecorationImage(
                  image: AssetImage(AssetsData.logo))
              ),
            ),
          ),
          Expanded(
            child: Column(
              spacing: 3,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const Text(
                    'Harry Potter and the Coplet of Fire',
                    style: Styles.textStyle20,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Text(
                  'J.K. Rowling',
                  style: Styles.textStyle14,
                ),
                Row(
                  children: [
                    Text(
                      '19.99 C',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const Spacer(),
                    const BookRateing()
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}