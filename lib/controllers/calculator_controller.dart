import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  final txtAngka1 = TextEditingController();
  final txtAngka2 = TextEditingController();

  var result =
      ''.obs; // digunakan untuk merender hasil perhitungan menggunakan .obs

  bool isEmpty() {
    if (txtAngka1.text.isEmpty || txtAngka2.text.isEmpty) {
      Get.snackbar('Error', 'Input tidak boleh kosong');
      return true;
    }
    return false;
  }

  void tambah() {
    if (isEmpty()) return;

    int angka1 = int.parse(txtAngka1.text);
    int angka2 = int.parse(txtAngka2.text);

    int hasil = angka1 + angka2;
    result.value = hasil.toString();
  }

  void kurang() {
    if (isEmpty()) return;

    int angka1 = int.parse(txtAngka1.text);
    int angka2 = int.parse(txtAngka2.text);

    int hasil = angka1 - angka2;
    result.value = hasil.toString();
  }

  void kali() {
    if (isEmpty()) return;

    int angka1 = int.parse(txtAngka1.text);
    int angka2 = int.parse(txtAngka2.text);

    int hasil = angka1 * angka2;
    result.value = hasil.toString();
  }

  void bagi() {
    if (isEmpty()) return;

    int angka1 = int.parse(txtAngka1.text);
    int angka2 = int.parse(txtAngka2.text);

    if (angka2 != 0) {
      double hasil = angka1 / angka2;
      result.value = hasil.toString();
    } else {
      result.value = 'Cannot divide by zero';
    }
  }

  void clear() {
    txtAngka1.clear();
    txtAngka2.clear();
    result.value = '';
    FocusScopeNode currentFocus = FocusScope.of(Get.context!);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}
