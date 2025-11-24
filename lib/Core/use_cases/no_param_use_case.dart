import 'package:bookly/Core/errors/failuir.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<t> {
  Future<Either<Failuir, t>> call();
}