import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ebook_app/core/errors/failure.dart';
import 'package:ebook_app/core/utils/api_service.dart';
import 'package:ebook_app/features/home/data/models/books_model/books_model.dart';
import 'package:ebook_app/features/home/data/repos/home_repo.dart';

class HomeRepoImplementation implements HomeRepo {

  ApiService apiService;
  HomeRepoImplementation(this.apiService);
  @override
  Future<Either<Failure, List<BooksModel>>> fetchNewestBooks() async {
    
    try {
      final data = await apiService.get(
        endPoint: 'Filtering=free-ebooks&Sorting=newest&q=subject:programming'
      );
      
      final List<BooksModel> books = [];
      for (final element in data['items']) {
        books.add(element);
      }
      
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks() async {
    
    try {
      final data = await apiService.get(
        endPoint: 'Filtering=free-ebooks&q=subject:programming'
      );
      
      final List<BooksModel> books = [];
      for (final element in data['items']) {
        books.add(element);
      }
      
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
  
}
