import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11plg2/routes/app_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPageController extends GetxController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  login() async {
    String username = usernameController.text.toString();
    String password = passwordController.text.toString();

    if (username == 'admin' && password == 'password') {
      Get.snackbar(
        'Login Successful',
        'Welcome, $username!',
        snackPosition: SnackPosition.BOTTOM,
      );

      final prefs = await SharedPreferences.getInstance();
      prefs.setString('username', username);
      prefs.setString('password', password);
      
      Get.offAllNamed(AppRoutes.basePage);

    } else {
      Get.snackbar(
        'Login Failed',
        'Invalid username or password',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}
