import 'package:bookly/Core/errors/failuir.dart';
import 'package:bookly/Features/home/Domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<Failuir,List<BookEntity>>>fetchFeatureBooks();
  Future<Either<Failuir,List<BookEntity>>>fetchNewsBooks();
}