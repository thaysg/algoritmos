import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubtractionController extends GetxController {
  final TextEditingController sub1Ctrl = TextEditingController();
  final TextEditingController sub2Ctrl = TextEditingController();

  void sub() {
    final sub1 = sub1Ctrl.text.isEmpty ? 0 : double.parse(sub1Ctrl.text);
    final sub2 = sub2Ctrl.text.isEmpty ? 0 : double.parse(sub2Ctrl.text);
    final sub = sub1 - sub2;
    Get.snackbar(
      'Resultado',
      '$sub',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      duration: const Duration(seconds: 5),
    );
  }
}
