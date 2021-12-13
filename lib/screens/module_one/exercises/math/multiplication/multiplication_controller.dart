import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MultiplicationController extends GetxController {
  final TextEditingController mult1Ctrl = TextEditingController();
  final TextEditingController mult2Ctrl = TextEditingController();

  void mult() {
    final mult1 = mult1Ctrl.text.isEmpty ? 0 : double.parse(mult1Ctrl.text);
    final mult2 = mult2Ctrl.text.isEmpty ? 0 : double.parse(mult2Ctrl.text);
    final mult = mult1 * mult2;
    Get.snackbar(
      'Resultado',
      '$mult',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      duration: const Duration(seconds: 5),
    );
  }
}
