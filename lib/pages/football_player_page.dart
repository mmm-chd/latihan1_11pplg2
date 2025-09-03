import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:latihan1_11plg2/components/text_component.dart';
import 'package:latihan1_11plg2/controllers/football_player_controller.dart';
import 'package:latihan1_11plg2/routes/app_routes.dart';

class FootballPlayerPage extends StatelessWidget {
  FootballPlayerPage({super.key});

  final FootballPlayerController footballPlayerController = Get.put(
    FootballPlayerController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Football Players")),
      body: Container(
        margin: EdgeInsets.all(14),
        child: Obx(
          () => ListView.builder(
            itemCount: footballPlayerController.playerList.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.editFootballPlayer, arguments: index);
                  },
                  child: Row(
                    spacing: 16,
                    children: [
                      Image.asset(
                        footballPlayerController.playerList[index].image,
                        width: 100,
                        height: 100,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText(
                            text:
                                'Nama: ${footballPlayerController.playerList[index].nama}',
                          ),
                          MyText(
                            text:
                                'Posisi: ${footballPlayerController.playerList[index].posisi}',
                          ),
                          MyText(
                            text:
                                'Nomor: ${footballPlayerController.playerList[index].playerNumber}',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
