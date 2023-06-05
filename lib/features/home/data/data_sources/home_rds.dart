import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:demo5/core/api/api_services.dart';
import 'package:demo5/core/config/app_network_urls.dart';
import 'package:demo5/core/error/app_exceptions.dart';

abstract class HomeRDS {
  Future<String> homeUser();
}

class HomeRDSImpl implements HomeRDS {
  const HomeRDSImpl({
    required this.apiServices,
  });

  final ApiServices apiServices;

  @override
  Future<String> homeUser() async {
    final Response response = await apiServices.callApi(
      type: ApiType.post,
      url: NetworkUrls.homeUrl,
      // data: params.toMap(),
      methodName: 'homeUser',
    );

    if (response.statusCode == 200) {
      if (response.data['result']) {
        // return UserLogin.fromMap(response.data);
        return 'success';
      } else {
        throw StatusException(response.data['message']);
      }
    } else {
      throw ServerException();
    }
  }

}
