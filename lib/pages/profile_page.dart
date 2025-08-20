import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11plg2/components/card_profile_component.dart';
import 'package:latihan1_11plg2/components/text_component.dart';
import 'package:latihan1_11plg2/controllers/profile_controller.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Profile")),
      body: Container(
        margin: EdgeInsets.all(14),
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(50),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile.jpeg"),
                      radius: 50,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16),
                      child: MyText(
                        text: "Severus Melvin",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              CardProfile(
                text: "11 PPLG 2",
                textStyle: TextStyle(fontSize: 18),
                leadingIcon: Icon(Icons.class_rounded),
              ),
              CardProfile(
                text: "+62-859-2663-7138",
                textStyle: TextStyle(fontSize: 18),
                leadingIcon: Icon(Icons.phone),
              ),
              CardProfile(
                text: "melvinmulyono02@gmail.com",
                textStyle: TextStyle(fontSize: 18),
                leadingIcon: Icon(Icons.email),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
