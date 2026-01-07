import 'package:cached_network_image/cached_network_image.dart';
import 'package:ebook_app/core/utils/app_router.dart';
import 'package:ebook_app/core/utils/styles.dart';
import 'package:ebook_app/features/home/data/models/books_model/books_model.dart';
import 'package:ebook_app/features/home/presentation/views/widgets/book_rateing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListviewItem extends StatelessWidget {
  const BestSellerListviewItem({required this.booksModel, super.key});

  final BooksModel booksModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go(AppRouter.kbookDetailsView);
      },
      child: SizedBox(
        height: 130,
        child: Row(
          spacing: 30,
          children: [
            AspectRatio(
              aspectRatio: 2.2 / 4,
              child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: booksModel.volumeInfo.imageLinks.thumbnail,
          errorWidget: (context, url, error) => const Icon(Icons.error),
          placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
        ),
            ),
            Expanded(
              child: Column(
                spacing: 3,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      booksModel.volumeInfo.title!,
                      style: Styles.textStyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(booksModel.volumeInfo.authors![0], style: Styles.textStyle14),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      BookRateing(
                        rating: booksModel.volumeInfo.maturityRating!,
                        pageCount: booksModel.volumeInfo.pageCount!,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
