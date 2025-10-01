import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11plg2/components/button_component.dart';
import 'package:latihan1_11plg2/components/text_field_component.dart';
import 'package:latihan1_11plg2/controllers/contact_controller.dart';

class ContactPage extends StatelessWidget {
  ContactPage({super.key});

  final ContactController contactController = Get.find<ContactController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 34.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: MyTextField(
                      label: 'Input Name',
                      controller: contactController.nameController,
                      isNumber: false,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    child: CustomButton(
                      text: 'Add',
                      onPressed: contactController.addName,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      backgroundColor: Colors.lightBlueAccent,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Obx(
                    () => ListView.builder(
                      itemCount: contactController.names.length,
                      itemBuilder: (context, index) {
                        return Dismissible(
                          key: Key(
                            contactController.names[index]['id'].toString(),
                          ),
                          onDismissed: (direction) async {
                            await contactController.deleteName(index);
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 4.0),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(12.0),
                              onDoubleTap: () {
                                contactController.fillingDialog(index);
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text('Update Name'),
                                      content: MyTextField(
                                        label: 'New Name',
                                        controller:
                                            contactController.dialogController,
                                        isNumber: false,
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('Cancel'),
                                        ),
                                        ElevatedButton(
                                          onPressed: () async {
                                            await contactController.updateName(
                                              contactController
                                                      .names[index]['id']
                                                  as int,
                                            );
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('Update'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.person),
                                    SizedBox(width: 10.0),
                                    Text(
                                      contactController.names[index]['name']
                                          .toString(),
                                      style: TextStyle(fontSize: 18.0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
