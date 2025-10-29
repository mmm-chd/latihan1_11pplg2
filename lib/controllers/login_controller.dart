import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:latihan1_11plg2/model/login_model.dart';
import 'package:latihan1_11plg2/routes/app_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPageController extends GetxController {
  final inpUsername = TextEditingController();
  final inpPassword = TextEditingController();

  final isLoading = false.obs;

  static const String baseURL = 'mediadwi.com';

  Future<void> loginLogic() async {
    final user = inpUsername.text.trim();
    final pass = inpPassword.text.trim();

    if (user.isEmpty || pass.isEmpty) {
      Get.snackbar('Error', 'Username dan password tidak boleh kosong');
      return;
    }

    isLoading.value = true;
    final url = Uri.https(baseURL, '/api/latihan/login');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/x-www-form-urlencoded'},
      body: {'username': user, 'password': pass},
    );

    try {
      if (response.statusCode == 200) {
        final loginData = loginModelFromJson(response.body);

        Get.snackbar('LOGIN STATUS', loginData.message);

        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', loginData.token.toString());

        if (loginData.status) {
          Get.offAllNamed(AppRoutes.basePage);
        }
      }
    } catch (e) {
      final loginData = loginModelFromJson(response.body);
      Get.snackbar('LOGIN STATUS', loginData.message);
    } finally {
      isLoading.value = false;
    }
  }
}
