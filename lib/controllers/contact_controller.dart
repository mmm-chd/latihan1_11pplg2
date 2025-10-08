import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:latihan1_11plg2/database/db_helper.dart';

class ContactController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController dialogController = TextEditingController();
  final dataOr = <Map<String, dynamic>>[].obs;
  final _dbHelper = DbHelper();

  @override
  void onInit() {
    super.onInit();
    fetchNames();
  }

  Future<void> fetchNames() async {
    final data = await _dbHelper.getNames();
    dataOr.assignAll(data);
  }

  Future<void> addName() async {
    final nameText = nameController.text.trim();
    if (nameText.isEmpty) return;
    await _dbHelper.insertName(nameText);
    nameController.clear();
    fetchNames();
  }

  void fillingDialog(int index) {
    if (index < 0 || index >= dataOr.length) return;
    final contact = dataOr[index];
    dialogController.text = contact['name'] as String;
  }

  Future<void> updateName(int index) async {
    final dialogText = dialogController.text.trim();
    if (dialogText.isEmpty) return;
    await _dbHelper.update(index, dialogText);
    nameController.clear();
    fetchNames();
  }

  Future<void> deleteName(int index) async {
    if (index < 0 || index >= dataOr.length) return;

    final contact = dataOr[index];
    final dbId = contact['id'] as int;
    final contactName = contact['name'] as String;

    await _dbHelper.delete(dbId);
    Get.snackbar(
      'Deleted',
      '$contactName contact deleted successfully',
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(milliseconds: 800),
    );
    fetchNames();
  }
}
