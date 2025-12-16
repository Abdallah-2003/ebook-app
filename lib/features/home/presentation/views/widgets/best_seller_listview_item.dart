import 'package:ebook_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class BestSellerListviewItem extends StatelessWidget {
  const BestSellerListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
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
          )
        ],
      ),
    );
  }
}