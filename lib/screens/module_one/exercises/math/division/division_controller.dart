import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DivisionController extends GetxController {
  final TextEditingController div1Ctrl = TextEditingController();
  final TextEditingController div2Ctrl = TextEditingController();

  void divInt() {
    final div1 = div1Ctrl.text.isEmpty ? 0 : double.parse(div1Ctrl.text);
    final div2 = div2Ctrl.text.isEmpty ? 0 : double.parse(div2Ctrl.text);
    final div = div1 / div2;
    Get.snackbar(
      'Resultado',
      '$div',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      duration: const Duration(seconds: 5),
    );
  }

  void divRest() {
    final div1 = div1Ctrl.text.isEmpty ? 0 : double.parse(div1Ctrl.text);
    final div2 = div2Ctrl.text.isEmpty ? 0 : double.parse(div2Ctrl.text);
    final div = div1 % div2;
    Get.snackbar(
      'Resultado',
      '$div',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      duration: const Duration(seconds: 5),
    );
  }
}
