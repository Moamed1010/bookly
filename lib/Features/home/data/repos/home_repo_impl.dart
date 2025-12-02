import 'package:bookly/Core/errors/failuir.dart';
import 'package:bookly/Features/home/Domain/Repositories/home_repo.dart';
import 'package:bookly/Features/home/Domain/entities/book_entity.dart';
import 'package:bookly/Features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly/Features/home/data/data_sources/home_remote_data_source.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});
  @override
  Future<Either<Failuir, List<BookEntity>>> fetchFeatureBooks() async {
    try {
      var cashedFeatureBooks = homeLocalDataSource.fetchFeatureBooks();
      if (cashedFeatureBooks.isNotEmpty) {
        return right(cashedFeatureBooks);
      }
      var featureBooks = await homeRemoteDataSource.fetchFeatureBooks();
      return right(featureBooks);
    } on Exception catch (e) {
      return left(Failuir());
    }
  }

  @override
  Future<Either<Failuir, List<BookEntity>>> fetchNewestBooks() async {
    try {
      var cachedNewestBooks = homeLocalDataSource.fetchNewestBooks();
      if (cachedNewestBooks.isNotEmpty) {
        return right(cachedNewestBooks);
      }
      var newestBooks = await homeRemoteDataSource.fetchNewestBooks();
      return right(newestBooks);
    } on Exception catch (e) {
      return left(Failuir());
    }
  }
}
