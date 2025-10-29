import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11plg2/components/text_component.dart';
import 'package:latihan1_11plg2/controllers/football_player_controller.dart';
import 'package:latihan1_11plg2/routes/app_routes.dart';

class FootballWide extends StatelessWidget {
  FootballWide({super.key});

  final FootballPlayerController footballPlayerController =
      Get.find<FootballPlayerController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Football Players")),
      body: Container(
        margin: EdgeInsets.all(14),
        child: Obx(
          () => GridView.builder(
            itemCount: footballPlayerController.playerList.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.editFootballPlayer, arguments: index);
                  },
                  borderRadius: BorderRadius.circular(12),
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            footballPlayerController.playerList[index].image,
                            width: 140,
                            height: 140,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                footballPlayerController.playerList[index].nama,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 6),
                              Row(
                                children: [
                                  Icon(
                                    Icons.sports_soccer,
                                    size: 16,
                                    color: Colors.grey[600],
                                  ),
                                  SizedBox(width: 4),
                                  MyText(
                                    text:
                                        'Posisi: ${footballPlayerController.playerList[index].posisi}',
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              MyText(
                                text:
                                    'Nomor: ${footballPlayerController.playerList[index].playerNumber}',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              crossAxisCount: 2,
              mainAxisExtent: 200,
            ),
          ),
        ),
      ),
    );
  }
}
