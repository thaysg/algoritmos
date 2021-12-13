import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AreaController extends GetxController {
  TextEditingController larguraCtrl = TextEditingController();
  TextEditingController comprimentoCtrl = TextEditingController();

  void area() {
    double largura =
        larguraCtrl.text.isEmpty ? 0 : double.parse(larguraCtrl.text);
    double comprimento =
        comprimentoCtrl.text.isEmpty ? 0 : double.parse(comprimentoCtrl.text);
    double area = largura * comprimento;
    double litro = area / 2;
    Get.snackbar(
      'Area',
      'Sua area é de $area m² e você precisa de $litro litros de tinta',
      colorText: Colors.white,
      backgroundColor: Colors.green,
      duration: const Duration(seconds: 12),
    );
  }
}
