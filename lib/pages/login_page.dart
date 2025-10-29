import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11plg2/components/button_component.dart';
import 'package:latihan1_11plg2/components/text_component.dart';
import 'package:latihan1_11plg2/components/text_field_component.dart';
import 'package:latihan1_11plg2/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final LoginPageController loginPageController =
      Get.find<LoginPageController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Center(
          child:
              loginPageController.isLoading.value
                  ? CircularProgressIndicator(color: Colors.blueAccent)
                  : Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(
                          text: 'Sign In',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 8),
                        MyText(
                          text: 'Enter valid username and password to continue',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 28),
                        MyTextField(
                          label: 'Username',
                          controller: loginPageController.inpUsername,
                          isNumber: false,
                        ),
                        SizedBox(height: 8),
                        MyTextField(
                          label: 'Password',
                          controller: loginPageController.inpPassword,
                          isNumber: false,
                        ),
                        SizedBox(height: 28),
                        CustomButton(
                          text: 'Sign In',
                          onPressed: loginPageController.loginLogic,
                          backgroundColor: Colors.blueAccent,
                          foregroundColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
        ),
      ),
    );
  }
}
