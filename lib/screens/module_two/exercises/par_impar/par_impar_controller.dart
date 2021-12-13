import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ParImparController extends GetxController {
  TextEditingController numeroCtrl = TextEditingController();

  void parImpar() {
    int numero = int.parse(numeroCtrl.text);
    if (numero % 2 == 0) {
      Get.snackbar('Par', 'O número $numero é par');
    } else {
      Get.snackbar('Impar', 'O número $numero é impar');
    }
  }
}
