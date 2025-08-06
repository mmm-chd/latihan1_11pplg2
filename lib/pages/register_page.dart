import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:latihan1_11plg2/components/button_component.dart';
import 'package:latihan1_11plg2/components/image_file_component.dart';
import 'package:latihan1_11plg2/components/rich_text_lgn_component.dart';
import 'package:latihan1_11plg2/components/text_component.dart';
import 'package:latihan1_11plg2/components/text_field_component.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  int selectedRadio = 0;
  String formattedDate = '';

  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtDateOfBirth = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register Page')),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            left: 12.0,
            right: 12.0,
            top: 12.0,
            bottom: 72.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyText(
                text: 'Let\'s Get Started!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1976D2), // Light Blue color
                ),
              ),
              MyText(
                text: 'Please fill in your details below',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Center(
                child: MyImage(
                  imagePath: 'assets/images/logo2.png',
                  width: 150.0,
                  marginTop: 74.0,
                ),
              ),
              MyTextField(
                isNumber: false,
                label: 'Username',
                controller: txtUsername,
                marginTop: 74.0,
                obscureText: false,
              ),
              _dateOfBirth(context),
              _gender(),
              MyTextField(
                isNumber: false,
                label: 'Password',
                controller: txtPassword,
                marginTop: 16.0,
                obscureText: true,
              ),
              MyTextField(
                isNumber: false,
                label: 'Confirm Password',
                controller: txtConfirmPassword,
                marginTop: 16.0,
                obscureText: true,
              ),
              _btnRegister(context),
              MyRichText(
                textFirstPart: 'Already have an account? ',
                textSecondPart: 'Login here',
                marginTop: 16.0,
                onTap: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  CustomButton _btnRegister(BuildContext context) {
    return CustomButton(
      text: 'Register',
      margin: 54.0,
      onPressed: () {
        setState(() {
          if (txtUsername.text.isEmpty ||
              txtPassword.text.isEmpty ||
              txtConfirmPassword.text.isEmpty ||
              txtDateOfBirth.text.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Please fill in all fields.')),
            );
            return;
          } else {
            if (txtPassword.text != txtConfirmPassword.text) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Passwords do not match.')),
              );
              return;
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Registration successful!')),
              );
              // Clear fields after successful registration
              txtUsername.clear();
              txtPassword.clear();
              selectedRadio = 0;
              txtConfirmPassword.clear();
              txtDateOfBirth.clear();
            }
          }
        });
      },
    );
  }

  MyTextField _dateOfBirth(BuildContext context) {
    return MyTextField(
      isNumber: false,
      label: 'Date of Birth',
      controller: txtDateOfBirth,
      marginTop: 16.0,
      readOnly: true,
      onTap: () async {
        FocusScope.of(context).requestFocus(FocusNode()); // Hide keyboard
        DateTime? dateTime = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        );

        if (dateTime != null) {
          formattedDate = DateFormat('dd/MM/yyyy').format(dateTime);
        }

        setState(() {
          txtDateOfBirth.text = formattedDate;
        });
      },
    );
  }

  Container _gender() {
    return Container(
      margin: EdgeInsets.only(top: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            text: 'Gender',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1976D2),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Radio(
                    activeColor: Color(0xFF1976D2),
                    value: 0,
                    groupValue: selectedRadio,
                    onChanged: (value) {
                      setState(() {
                        selectedRadio = value as int;
                      });
                    },
                  ),
                  Text('Male'),
                ],
              ),
              Row(
                children: [
                  Radio(
                    activeColor: Color(0xFF1976D2),
                    value: 1,
                    groupValue: selectedRadio,
                    onChanged: (value) {
                      setState(() {
                        selectedRadio = value as int;
                      });
                    },
                  ),
                  Text('Female'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
