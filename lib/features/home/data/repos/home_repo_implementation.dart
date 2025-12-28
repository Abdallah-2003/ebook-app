import 'package:dartz/dartz.dart';
import 'package:ebook_app/core/errors/failure.dart';
import 'package:ebook_app/features/home/data/models/books_model/books_model.dart';
import 'package:ebook_app/features/home/data/repos/home_repo.dart';

class HomeRepoImplementation implements HomeRepo{
  @override
  Future<Either<Failure, List<BooksModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}