import 'package:admin_usmhub_v1/constants/controllers.dart';
import 'package:admin_usmhub_v1/routers/routes.dart';
import 'package:admin_usmhub_v1/routers/routing.dart';
import 'package:flutter/material.dart';

Navigator localNavigator() => Navigator(
      key: myNavigationController.navigationKey,
      initialRoute: DashboardPageRoute,
      onGenerateRoute: generateRoute,
    );
