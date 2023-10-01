import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_app_1/app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(useMaterial3: true),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
