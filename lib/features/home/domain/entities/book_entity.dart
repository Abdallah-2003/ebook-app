import 'package:hive_flutter/adapters.dart';
part 'book_entity.g.dart';

@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String? image;
  @HiveField(1)
  final String? title;
  @HiveField(2)
  final String? author;
  @HiveField(3)
  final num price;
  @HiveField(4)
  final num rating;

  const BookEntity({
    required this.image,
    required this.title,
    required this.author,
    required this.price,
    required this.rating,
  });
}
