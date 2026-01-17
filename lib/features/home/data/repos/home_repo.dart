import 'package:dartz/dartz.dart';
import 'package:ebook_app/core/errors/failure.dart';
import 'package:ebook_app/features/home/data/models/books_model/books_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BooksModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BooksModel>>> fetchSimilarBooks({required String category});
}
