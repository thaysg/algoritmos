import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlistamentoController extends GetxController {
  TextEditingController anoCtrl = TextEditingController();

  void alistar() {
    int anoA = 2021;
    final int anoN = int.parse(anoCtrl.text);
    final int idade = anoA - anoN;
    final menor = 18 - idade;
    final maior = idade - 18;
    if (idade < 18) {
      Get.snackbar(
        'Idade',
        'Você tem $idade. Você não pode alistar, ainda faltam $menor anos',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        duration: const Duration(seconds: 5),
      );
    } else if (idade == 18) {
      Get.snackbar(
        'Idade',
        'Você tem $idade. Você pode alistar',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
        duration: const Duration(seconds: 5),
      );
    } else {
      Get.snackbar(
        'Idade',
        'Você tem $idade. Você já passou $maior anos do alistamento',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        duration: const Duration(seconds: 5),
      );
    }
  }
}
