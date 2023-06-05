import 'package:dartz/dartz.dart';
import 'package:demo5/core/error/app_exceptions.dart';
import 'package:demo5/core/error/app_failures.dart';
import 'package:demo5/core/usecases/common_usecases.dart';
import 'package:demo5/features/home/data/data_sources/home_rds.dart';
import 'package:demo5/features/home/domain/repositories/home_repo.dart';
import 'package:demo5/network/lmg_network_info.dart';

class HomeRepoImpl implements HomeRepo {
  final NetworkInfo networkInfo;
  final HomeRDS homeRDS;

  const HomeRepoImpl({
    required this.networkInfo,
    required this.homeRDS,
  });

  @override
  Future<Either<Failure, String>> home() async {
    if (await networkInfo.isConnected) {
      try {
        final userHome = await homeRDS.homeUser();
        return Right(userHome);
      } on ServerException {
        return Left(ServerFailure());
      } catch (e) {
        return Left(CacheFailure(error: e));
      }
    } else {
      return Left(NetworkFailure());
    }
  }

}
