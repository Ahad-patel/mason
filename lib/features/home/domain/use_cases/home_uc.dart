

import 'package:dartz/dartz.dart';
import 'package:demo5/features/home/domain/repositories/home_repo.dart';
import 'package:demo5/core/error/app_failures.dart';
import 'package:demo5/core/usecases/common_usecases.dart';


class HomeUC implements UseCase<String,NoParams> {
final HomeRepo repo;

  HomeUC({required this.repo});

  @override
  Future<Either<Failure, String>> call(NoParams params)  {
    print('Home Usecase $params');
    return repo.home();
  }
}