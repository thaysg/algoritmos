import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MediaController extends GetxController {
  final TextEditingController nota1Ctrl = TextEditingController();
  final TextEditingController nota2Ctrl = TextEditingController();

  void media() {
    final nota1 = nota1Ctrl.text.isEmpty ? 0 : double.parse(nota1Ctrl.text);
    final nota2 = nota2Ctrl.text.isEmpty ? 0 : double.parse(nota2Ctrl.text);
    final media = (nota1 + nota2) / 2;
    Get.snackbar(
      'A média entre $nota1 e $nota2 é igual a : ',
      '$media',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      duration: const Duration(seconds: 5),
    );
    if (media >= 6) {
      Get.snackbar(
        'Parabéns você foi aprovado : ',
        '$media',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
        duration: const Duration(seconds: 5),
      );
    } else {
      Get.snackbar(
        'Você foi reprovado : ',
        '$media',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        duration: const Duration(seconds: 5),
      );
    }
  }
}
