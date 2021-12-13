import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DistanciaController extends GetxController {
  TextEditingController distanciaCtrl = TextEditingController();

  void distancia() {
    final distancia = double.parse(distanciaCtrl.text);
    final maiorQue = distancia * 0.45;
    final menorQue = distancia * 0.5;
    if (distancia > 200) {
      Get.snackbar(
        'Distância',
        'Você deseja percorrer $distancia km, o valor da passagem será de R\$$maiorQue',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        duration: const Duration(seconds: 2),
      );
    } else {
      Get.snackbar(
        'Distância',
        'Você deseja percorrer $distancia km, o valor da passagem será de R\$$menorQue',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
        duration: const Duration(seconds: 2),
      );
    }
  }
}
