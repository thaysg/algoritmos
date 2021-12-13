import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesafioDoisController extends GetxController {
  TextEditingController aCtrl = TextEditingController();
  TextEditingController bCtrl = TextEditingController();
  TextEditingController cCtrl = TextEditingController();

  //Condicional matematica para um triangulo ser verdadeiro
  /*
  | b - c | < a < b + c
  | a - c | < b < a + c
  | a - b | < c < a + b
  */

  void triangulo() {
    double a = double.parse(aCtrl.text);
    double b = double.parse(bCtrl.text);
    double c = double.parse(cCtrl.text);

    final bool triangulo = a < b + c && b < a + c && c < a + b;
    if (triangulo == true) {
      Get.snackbar(
        'Triângulo',
        'É um triângulo',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        borderRadius: 10,
      );
    } else {
      Get.snackbar(
        'Triângulo',
        'Não é um triângulo',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        borderRadius: 10,
      );
    }
  }
}
