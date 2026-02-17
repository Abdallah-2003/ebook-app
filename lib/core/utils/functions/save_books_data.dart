import 'package:ebook_app/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

void saveBooksData(List<BookEntity> books, String boxName) {
    final box = Hive.box(boxName);
    box.addAll(books);
  }