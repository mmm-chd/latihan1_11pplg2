import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:latihan1_11plg2/components/button_component.dart';
import 'package:latihan1_11plg2/components/text_field_component.dart';
import 'package:latihan1_11plg2/controllers/edit_football_player_controller.dart';

class EditFootballPlayerPage extends StatelessWidget {
  EditFootballPlayerPage({super.key});

  final EditFootballPlayerController editFootballPlayerController = Get.put(
    EditFootballPlayerController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit List Player")),
      body: Container(
        margin: EdgeInsets.all(14),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyTextField(
                label: "Enter Player",
                controller: editFootballPlayerController.txtPlayerName,
                isNumber: false,
              ),
              MyTextField(
                label: "Enter Position",
                controller: editFootballPlayerController.txtPosition,
                isNumber: false,
                marginTop: 24,
              ),
              MyTextField(
                label: "Enter Player Number",
                controller: editFootballPlayerController.txtPlayerNumber,
                isNumber: true,
                marginTop: 24,
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                width: double.infinity,
                child: CustomButton(
                  text: "Save",
                  onPressed: editFootballPlayerController.saveChanges,
                  backgroundColor: Colors.amber[300],
                  foregroundColor: Colors.amber[50],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
