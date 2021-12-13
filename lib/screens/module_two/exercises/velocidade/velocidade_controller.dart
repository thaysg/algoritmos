import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VelocidadeController extends GetxController {
  TextEditingController velocidadeCtrl = TextEditingController();

  void velocidade() {
    double velocidade = double.parse(velocidadeCtrl.text);
    double velocidadeAcima = velocidade - 80;
    final double multa = (velocidade - 80) * 5;
    if (velocidade > 80) {
      Get.snackbar(
        'Atenção',
        'Multa: R\$ $multa, velocidade acima do limite, você estava $velocidadeAcima km/h acima do limite',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        borderRadius: 10,
        duration: const Duration(seconds: 8),
      );
    } else {
      Get.snackbar(
        'Velocidade',
        'Sua velocidade é de $velocidade km/h. Você está dentro do limite',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
        borderRadius: 10,
        duration: const Duration(seconds: 3),
      );
    }
  }
}
