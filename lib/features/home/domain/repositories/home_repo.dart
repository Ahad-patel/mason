import 'package:dartz/dartz.dart';
import 'package:demo5/core/error/app_failures.dart';

abstract class HomeRepo {
  Future<Either<Failure, String>> home();

}
