import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoubleAndTercaController extends GetxController {
  final TextEditingController numberCtrl = TextEditingController();

  void showNumber() {
    double number;
    number = numberCtrl.text.isEmpty ? 0 : double.parse(numberCtrl.text);
    final doubleN = number * 2;
    final tercaN = number / 3;
    update();
    Get.snackbar(
      'Dobro e Terça Parte ',
      'O dobro de $number é $doubleN e sua terça é $tercaN ',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      duration: const Duration(seconds: 15),
    );
  }
}
