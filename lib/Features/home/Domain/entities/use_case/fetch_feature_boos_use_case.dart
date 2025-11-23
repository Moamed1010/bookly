import 'package:bookly/Core/errors/failuir.dart';
import 'package:bookly/Features/home/Domain/Repositories/home_repo.dart';
import 'package:bookly/Features/home/Domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

class FetchFeatureBoosUseCase {
  final HomeRepo homeRepo;

  FetchFeatureBoosUseCase(this.homeRepo);
  Future<Either<Failuir, List<BookEntity>>> fetchFeatureBooks() {
    return homeRepo.fetchFeatureBooks();
  }
}
