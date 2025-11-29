import 'package:bookly/Features/home/Domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {

  List<BookEntity> fetchFeatureBooks();
  List<BookEntity> fetchNewestBooks();
}