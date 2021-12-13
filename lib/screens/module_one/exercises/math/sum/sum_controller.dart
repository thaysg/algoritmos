import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SumController extends GetxController {
  final TextEditingController sum1Ctrl = TextEditingController();
  final TextEditingController sum2Ctrl = TextEditingController();

  void sum() {
    final sum1 = sum1Ctrl.text.isEmpty ? 0 : double.parse(sum1Ctrl.text);
    final sum2 = sum2Ctrl.text.isEmpty ? 0 : double.parse(sum2Ctrl.text);
    final sum = sum1 + sum2;
    Get.snackbar(
      'Resultado',
      '$sum',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      duration: const Duration(seconds: 5),
    );
  }
}
