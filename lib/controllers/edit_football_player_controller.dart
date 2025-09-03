import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11plg2/controllers/football_player_controller.dart';
import 'package:latihan1_11plg2/model/player_model.dart';

class EditFootballPlayerController extends GetxController {
  // final index = Get.arguments as int;
  // final footballPlayerController = Get.find<FootballPlayerController>();
  
  late int index;
  late FootballPlayerController footballPlayerController;

  final txtPlayerName = TextEditingController();
  final txtPosition = TextEditingController();
  final txtPlayerNumber = TextEditingController();


  @override
  void onInit() {
    super.onInit();
    index = Get.arguments as int;
    footballPlayerController = Get.find<FootballPlayerController>();
    fillIn();
  }

  void fillIn() {
    txtPlayerName.text = footballPlayerController.playerList[index].nama;
    txtPosition.text = footballPlayerController.playerList[index].posisi;
    txtPlayerNumber.text =
        footballPlayerController.playerList[index].playerNumber.toString();
  }

  void saveChanges() {
    footballPlayerController.playerList[index] = Player(
      nama: txtPlayerName.text,
      posisi: txtPosition.text,
      playerNumber: int.parse(txtPlayerNumber.text),
      image: footballPlayerController.playerList[index].image,
    );
    Get.back();
  }
}
