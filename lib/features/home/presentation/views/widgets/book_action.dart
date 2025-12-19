import 'package:ebook_app/features/home/presentation/views/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButtom(
            text: '19.99 C',
            backGroundColor: Colors.white,
            textColor: Colors.black,
            borderRadiusGeometry: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12)
            ),
          )
        ),
        Expanded(
          child: CustomButtom(
            text: 'Free Preview',
            backGroundColor: Colors.orange,
            textColor: Colors.white,
            borderRadiusGeometry: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12)
            ),
          )
        ),
      ],
    );
  }
}