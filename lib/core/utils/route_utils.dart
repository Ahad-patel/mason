import 'package:flutter/material.dart';
import 'package:demo5/core/config/app_routes.dart';
import 'package:demo5/features/home/presentation/pages/home_page.dart';


class RouteUtils {
  static Map<String, Widget Function(BuildContext)> routes = {

    /// Home Page
    AppRoutes.homePage: (context) {
      return const HomePage();
    },

  };
}
