import 'package:ebook_app/core/utils/api_sevice.dart';
import 'package:ebook_app/features/home/data/models/book_model/book_model.dart';
import 'package:ebook_app/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {

  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}


class HomeRemoteDataSourceImplementation extends HomeRemoteDataSource {

  final ApiSevice apiSevice;

  HomeRemoteDataSourceImplementation(this.apiSevice);

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    
    final data = await apiSevice.get(endPoint: 'volumes?q=programming&Filtering=free-ebooks');

    final List<BookEntity> books = getBooks(data);

    return books;
  }

  

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    
    final data = await apiSevice.get(endPoint: 'volumes?q=programming&Filtering=free-ebooks&Sorting=newest');

    final List<BookEntity> books = getBooks(data);

    return books;
  }


  List<BookEntity> getBooks(Map<String, dynamic> data) {
    final List<BookEntity> books = [];
    
    for (final element in data['items']) {
      books.add(BookModel.fromJson(element));
    }
    return books;
  }


}