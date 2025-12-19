import 'package:ebook_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    required this.backGroundColor,
    required this.textColor,
    required this.text,
    this.borderRadiusGeometry,
    super.key,
  });

  final Color backGroundColor;
  final Color textColor;
  final BorderRadiusGeometry? borderRadiusGeometry;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backGroundColor,
          textStyle: Styles.textStyle18.copyWith(color: textColor),
          shape: RoundedRectangleBorder(
            borderRadius: borderRadiusGeometry ?? BorderRadius.circular(12),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
