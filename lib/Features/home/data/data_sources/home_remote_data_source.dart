import 'package:bookly/Core/utils/api_service.dart';
import 'package:bookly/Core/utils/functions/save_box.dart';
import 'package:bookly/Features/home/Domain/entities/book_entity.dart';
import 'package:bookly/Features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/constans.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeatureBooks({int pageNuber = 0});
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<BookEntity>> fetchFeatureBooks({int pageNuber = 0}) async {
    var data = await apiService.get(
        endpoint:
            'volumes?Filtering=free-ebooks&q=programming&startIndex=${pageNuber * 10}');
    List<BookEntity> books = get_books_list(data);
    saveBoxData(books, KFeaturedBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiService.get(
      endpoint: 'volumes?Filtering=free-ebooks&sorting=newest&q=programming',
    );
    List<BookEntity> books = get_books_list(data);
    saveBoxData(books, KNewestBox);

    return books;
  }

  List<BookEntity> get_books_list(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookmap in data['items']) {
      books.add(BookModel.fromJson(bookmap));
    }
    return books;
  }
}
