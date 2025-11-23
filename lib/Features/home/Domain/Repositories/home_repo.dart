import 'package:bookly/Features/home/Domain/entities/book_entity.dart';

abstract class HomeRepo{
  Future<List<BookEntity>>fetchFeatureBooks();
  Future<List<BookEntity>>fetchNewsBooks();
}