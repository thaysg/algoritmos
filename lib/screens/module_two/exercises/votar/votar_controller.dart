import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VotarController extends GetxController {
  TextEditingController votoCtrl = TextEditingController();

  void votar() {
    int anoN = int.parse(votoCtrl.text);
    int anoA = 2021;
    final int idade = anoA - anoN;
    if (idade >= 16) {
      Get.snackbar(
        'Voto',
        'Você tem $idade anos. Você pode votar',
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    } else {
      Get.snackbar(
        'Voto',
        'Você tem $idade anos. Você não pode votar',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}
