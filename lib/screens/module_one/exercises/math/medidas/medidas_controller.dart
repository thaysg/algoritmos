import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MedidasController extends GetxController {
  final TextEditingController numberCtrl = TextEditingController();

  void result() {
    double number = numberCtrl.text.isEmpty ? 0 : double.parse(numberCtrl.text);
    final cm = number * 100;
    final mm = number * 1000;
    final km = number * 1000;
    final hm = number / 100;
    final dam = number / 10;
    final dm = number * 10;
    Get.snackbar(
      'Medidas',
      'O metro de $number em centímetros é $cm, \nem milímetros é $mm, \nem quilômetros é $km, \nem hectômetros é $hm, \nem decâmetros é $dam, \nem decímetros é $dm',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      duration: const Duration(seconds: 15),
    );
  }
}
