import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11plg2/model/player_model.dart';

class FootballPlayerController extends GetxController {
  var isMobile = true.obs;

  var playerList =
      <Player>[
        Player(
          nama: "A",
          posisi: "Attacker",
          playerNumber: 00,
          image: 'assets/images/download.jpeg',
        ),
        Player(
          nama: "B",
          posisi: "Attacker",
          playerNumber: 01,
          image: 'assets/images/logo2.png',
        ),
        Player(
          nama: "C",
          posisi: "Defender",
          playerNumber: 02,
          image: 'assets/images/logo3.jpeg',
        ),
        Player(
          nama: "D",
          posisi: "Defender",
          playerNumber: 03,
          image: 'assets/images/duck.jpeg',
        ),
        Player(
          nama: "E",
          posisi: "Attacker",
          playerNumber: 04,
          image: 'assets/images/logo.png',
        ),
      ].obs;

  void updateLayout(BoxConstraints constraints) {
    isMobile.value = constraints.maxWidth < 640;
  }
}
