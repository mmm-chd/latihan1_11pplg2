import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11plg2/components/button_component.dart';
import 'package:latihan1_11plg2/components/text_field_component.dart';
import 'package:latihan1_11plg2/controllers/calculator_controller.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  // final CalculatorController controller = Get.put(CalculatorController());
  final CalculatorController controller = Get.find<CalculatorController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator Page')),
      body: Container(
        margin: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyTextField(
                label: 'Input Angka 1',
                controller: controller.txtAngka1,
                marginTop: 25,
                isNumber: true,
              ),
              MyTextField(
                label: 'Input Angka 2',
                controller: controller.txtAngka2,
                marginTop: 25,
                isNumber: true,
              ),
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButton(
                      onPressed: controller.tambah,
                      text: '+',
                      backgroundColor: Color.fromARGB(255, 0, 128, 255),
                      foregroundColor: Colors.white,
                    ),
                    CustomButton(
                      onPressed: controller.kurang,
                      text: '-',
                      backgroundColor: Color.fromARGB(255, 0, 128, 255),
                      foregroundColor: Colors.white,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButton(
                      onPressed: controller.kali,
                      text: '*',
                      backgroundColor: Color.fromARGB(255, 0, 128, 255),
                      foregroundColor: Colors.white,
                    ),
                    CustomButton(
                      onPressed: controller.bagi,
                      text: '/',
                      backgroundColor: Color.fromARGB(255, 0, 128, 255),
                      foregroundColor: Colors.white,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40.0),
                child: Obx(() {
                  return RichText(
                    text: TextSpan(
                      text: 'Result\n',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: controller.result.value,
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
              // Container(
              //   margin: EdgeInsets.only(top: 20.0),
              //   width: double.infinity,
              //   child: CustomButton(
              //     text: 'Football Pages',
              //     onPressed: () {
              //       Get.toNamed(AppRoutes.footballPlayerPage);
              //     },
              //     margin: 20.0,
              //     backgroundColor: Colors.red,
              //     foregroundColor: Colors.white,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
