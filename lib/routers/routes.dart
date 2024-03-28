import 'package:admin_usmhub_v1/pages/aspirasi/aspirasi_page.dart';
// import 'package:admin_usmhub_v1/pages/authentication/auth_page.dart';
import 'package:admin_usmhub_v1/pages/dashboard/dashboard.dart';
import 'package:admin_usmhub_v1/pages/datausers/datauser_page.dart';
import 'package:admin_usmhub_v1/pages/pengaduan/pengdauan_page.dart';
// import 'package:admin_usmhub_v1/pages/settings/settings_page.dart';
import 'package:admin_usmhub_v1/routers/routing.dart';
import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case DashboardPageRoute:
      return _getpageRoute(const DashboardPage());
    case PengaduanPageRoute:
      return _getpageRoute(const PengaduanPage());
    case AspirasiPageRoute:
      return _getpageRoute(const AspirasiPage());
    case DataUserPageRoute:
      return _getpageRoute(const DataUserPage());
    // case SettingPageRoute:
    //   return _getpageRoute(const SettingsPage());
    // case AuthenticationPageRoute:
    //   return _getpageRoute(const AuthPage());
    default:
      return _getpageRoute(const DashboardPage());
  }
}

PageRoute _getpageRoute(Widget child) {
  return MaterialPageRoute(
    builder: (context) => child,
  );
}
