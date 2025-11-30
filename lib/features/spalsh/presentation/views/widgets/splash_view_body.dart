import 'package:ebook_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(20),
            child: Image.asset(AssetsData.logo,
              width: 150,
              height: 150,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}