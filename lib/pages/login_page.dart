import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11plg2/components/button_component.dart';
import 'package:latihan1_11plg2/components/text_component.dart';
import 'package:latihan1_11plg2/components/text_field_component.dart';
import 'package:latihan1_11plg2/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final LoginPageController loginPageController = Get.find<LoginPageController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyText(
                text: 'Login',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              MyTextField(label: 'Username', controller: loginPageController.usernameController, isNumber: false),
              SizedBox(height: 8),
              MyTextField(label: 'Password', controller: loginPageController.passwordController, isNumber: false),
              SizedBox(height: 20),
              CustomButton(text: 'Login', onPressed: loginPageController.login),
            ],
          ),
        ),
      ),
    );
  }
}
