import 'package:ebook_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AssetsData.logo,
          height: 40,
        ),
        const Spacer(),
        const Icon(
          Icons.search,
          size: 30,
        )
      ],
    );
  }
}