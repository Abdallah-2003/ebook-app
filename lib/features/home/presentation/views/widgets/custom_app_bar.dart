import 'package:ebook_app/core/utils/app_router.dart';
import 'package:ebook_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        GestureDetector(
          onTap: () {
            context.go(AppRouter.kSearchView);
          },
          child: const Icon(
            Icons.search,
            size: 30,
          ),
        )
      ],
    );
  }
}