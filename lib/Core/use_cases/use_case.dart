import 'package:bookly/Core/errors/failuir.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<t, param> {
  Future<Either<Failuir, t>> call(param param);
}
