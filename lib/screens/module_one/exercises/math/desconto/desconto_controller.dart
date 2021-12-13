import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class DescontoController extends GetxController {
  TextEditingController descCtrl = TextEditingController();

  void promo() {
    double valor = double.parse(descCtrl.text);
    double desc = valor * 0.05;
    double total = valor - desc;
    Get.snackbar(
      'Promoção',
      'Você tem 5% de desconto, total da compra: R\$ $total',
      colorText: Colors.white,
      backgroundColor: Colors.green,
      duration: const Duration(seconds: 13),
    );
  }
}
