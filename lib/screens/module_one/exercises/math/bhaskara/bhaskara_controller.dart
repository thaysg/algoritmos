import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;

class BhaskaraController extends GetxController {
  final TextEditingController a = TextEditingController();
  final TextEditingController b = TextEditingController();
  final TextEditingController c = TextEditingController();

  void result() {
    final firstD = a.text.isEmpty ? 0 : double.parse(a.text);
    final secondD = b.text.isEmpty ? 0 : double.parse(b.text);
    final thirdD = c.text.isEmpty ? 0 : double.parse(c.text);
    final total = (secondD * secondD) - (4 * firstD * thirdD);
    final x1 = (-secondD + math.sqrt(total)) / (2 * firstD);
    final x2 = (-secondD - math.sqrt(total)) / (2 * firstD);
    Get.snackbar(
      'Resultado',
      'Detla = $total, \nX1 = $x1, \nX2= $x2',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      duration: const Duration(seconds: 10),
    );
  }
}
