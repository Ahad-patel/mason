import 'package:demo5/features/home/presentation/manager/home/home_cubit.dart';
import 'package:demo5/features/home/domain/use_cases/home_uc.dart';
import 'package:demo5/features/home/domain/repositories/home_repo.dart';
import 'package:demo5/features/home/data/repositories/home_impl.dart';
import 'package:demo5/features/home/data/data_sources/home_rds.dart';
import 'package:demo5/features/home/data/repositories/home_impl.dart';
import 'package:demo5/core/model/user.dart';

import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:demo5/core/local_db/db_helper.dart';
import 'package:demo5/network/lmg_network_info.dart';
import 'package:demo5/core/user/user.dart';
import 'package:demo5/core/api/api_services.dart';




final sl = GetIt.instance;

Future<void> setupLocator() async{
  sl.registerFactory(() => HomeCubit( homeUC: sl()));

/// ----- UseCases -----
  sl.registerLazySingleton(() => HomeUC(repo: sl()));

/// ----- Repository -----
  sl.registerLazySingleton<HomeRepo>(() => HomeRepoImpl(homeRDS: sl(), networkInfo: sl()));


/// ----- Data Sources -----
  sl.registerLazySingleton<HomeRDS>(() => HomeRDSImpl( apiServices: sl()));

///core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  sl.registerLazySingleton<User>(() => User());
  sl.registerLazySingleton<DbHelper>(() => DbHelper());
  sl.registerLazySingleton<UserInfo>(() => UserInfo());
  sl.registerLazySingleton(() => ApiServices(dio: Dio()));


/// ----- Utils -----


}