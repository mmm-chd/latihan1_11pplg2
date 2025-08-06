import 'package:flutter/material.dart';
import 'package:latihan1_11plg2/components/button_component.dart';
import 'package:latihan1_11plg2/components/image_file_component.dart';
import 'package:latihan1_11plg2/components/rich_text_lgn_component.dart';
import 'package:latihan1_11plg2/components/text_component.dart';
import 'package:latihan1_11plg2/components/text_field_component.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String statusLogin = "Please fill in the fields.";

  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page')),
      body: Container(
        margin: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyText(
              text: 'Welcome Back!!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1976D2), // Light Blue color
              ),
            ),
            MyText(
              text: 'Please fill username and password below',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            Center(
              child: MyImage(
                imagePath: 'assets/images/logo.png',
                width: 150.0,
                marginTop: 54.0,
              ),
            ),
            MyTextField(
              isNumber: false,
              label: 'Username',
              controller: txtUsername,
              marginTop: 54.0,
            ),
            MyTextField(
              isNumber: false,
              label: 'Password',
              controller: txtPassword,
              marginTop: 16.0,
              obscureText: true,
            ),
            CustomButton(
              text: 'Login',
              margin: 32.0,
              onPressed: () {
                setState(() {
                  if (txtUsername.text.isEmpty || txtPassword.text.isEmpty) {
                    statusLogin = "Please fill in the fields.";
                    txtUsername.clear();
                    txtPassword.clear();
                    return;
                  } else {
                    if (txtUsername.text != "admin" ||
                        txtPassword.text != "admin") {
                      statusLogin = "Invalid username or password.";
                    } else {
                      statusLogin = "Login successful for ${txtUsername.text}";
                      txtUsername.clear();
                      txtPassword.clear();
                    }
                  }
                });
              },
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 50.0),
                child: MyText(text: statusLogin),
              ),
            ),
            MyRichText(
              textFirstPart: 'Don\'t have an account? ',
              textSecondPart: 'Register here',
              marginTop: 90.0,
              onTap: () {
                Navigator.pushNamed(context, '/registerPage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
