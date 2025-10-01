import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:latihan1_11plg2/bindings/base_binding.dart';
import 'package:latihan1_11plg2/routes/app_pages.dart';
import 'package:latihan1_11plg2/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
      ),
      initialBinding: BaseBinding(),
      initialRoute: AppRoutes.contactPage,
      getPages: AppPages.appPages,
    );
  }
}
