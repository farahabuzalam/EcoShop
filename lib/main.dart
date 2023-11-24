import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:farah_s_ecoshop/theme/theme_helper.dart';
import 'package:farah_s_ecoshop/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'farah_s_ecoshop',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.iphone14OneScreen,
      routes: AppRoutes.routes,
    );
  }
}
