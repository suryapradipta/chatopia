import 'package:flutter/material.dart';
import '../routes/routes.dart';
import '../store/store.dart';

import 'package:get/get.dart';

/// check if the user has logged in
class RouteAuthMiddleware extends GetMiddleware {
  // priority smaller than better
  @override
  int? priority = 0;

  RouteAuthMiddleware({required this.priority});

  @override
  RouteSettings? redirect(String? route) {
    if (UserStore.to.isLogin ||
        route == AppRoutes.SIGN_IN ||
        route == AppRoutes.INITIAL) {
      return null;
    } else {
      Future.delayed(Duration(seconds: 2),
          () => Get.snackbar("Tips", "Login expired, please login again!"));
      return RouteSettings(name: AppRoutes.SIGN_IN);
    }
  }
}
