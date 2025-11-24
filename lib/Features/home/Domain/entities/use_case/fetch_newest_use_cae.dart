import 'package:bookly/Core/errors/failuir.dart';
import 'package:bookly/Core/use_cases/no_param_use_case.dart';
import 'package:bookly/Features/home/Domain/Repositories/home_repo.dart';
import 'package:bookly/Features/home/Domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBoosUseCase extends UseCase<List<BookEntity>> {
  final HomeRepo homeRepo;

  FetchNewestBoosUseCase(this.homeRepo);

  @override
  Future<Either<Failuir, List<BookEntity>>> call() async {
    return await homeRepo.fetchNewestBooks();
  }
}

class NoParam {}
