import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class DolarController extends GetxController {
  TextEditingController dolarController = TextEditingController();

  void dolar() {
    double real = double.parse(dolarController.text);
    double dolar = 5.60;
    double resultado = real / dolar;
    if (real < dolar) {
      Get.snackbar(
        'Erro',
        'Valor muito baixo',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
    Get.snackbar(
      'Real',
      'Você pode comprar \$${resultado.toStringAsFixed(2)} com R\$${real.toStringAsFixed(2)}',
      backgroundColor: Colors.green,
      colorText: Colors.white,
      duration: const Duration(seconds: 10),
    );
  }
}
