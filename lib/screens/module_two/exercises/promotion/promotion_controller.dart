import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromotionController extends GetxController {
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController genderCtrl = TextEditingController();
  TextEditingController priceCtrl = TextEditingController();

  void desconto() {
    double price = double.parse(priceCtrl.text);
    String gender = genderCtrl.text;
    double descontoM = (price * 5) / 100;
    double descontoF = (price * 13) / 100;

    if (gender == 'M') {
      double total = price - descontoM;
      Get.snackbar(
        'Desconto',
        'Você é do Homem. Seu desconto é de R\$ $descontoM e o total é R\$ $total',
        backgroundColor: Colors.blue,
        colorText: Colors.white,
        duration: const Duration(seconds: 5),
      );
    } else if (gender == 'F') {
      double total = price - descontoF;
      Get.snackbar(
        'Desconto',
        'Você é do Mulher. Seu desconto é de R\$ $descontoF e o total é R\$ $total',
        backgroundColor: Colors.green,
        colorText: Colors.white,
        duration: const Duration(seconds: 5),
      );
    } else {
      Get.snackbar(
        'Desconto',
        'Por favor, informe seu gênero.',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        duration: const Duration(seconds: 2),
      );
    }
  }
}
