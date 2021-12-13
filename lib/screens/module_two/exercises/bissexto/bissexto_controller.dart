import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BissextoController extends GetxController {
  TextEditingController anoController = TextEditingController();

  void bissexto() {
    int ano = int.parse(anoController.text);
    if (ano % 4 == 0 && ano % 100 != 0 || ano % 400 == 0) {
      Get.snackbar('Bissexto', 'O ano $ano é bissexto');
    } else {
      Get.snackbar('Não é Bissexto', 'O ano $ano não é bissexto');
    }
  }
}
