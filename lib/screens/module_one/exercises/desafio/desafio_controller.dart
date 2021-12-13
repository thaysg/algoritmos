import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesafioController extends GetxController {
  TextEditingController cigarrosCtrl = TextEditingController();
  TextEditingController anosCtrl = TextEditingController();

  void diasPerdidos() {
    //já que a cada cigarro perde 10 minutos de vida, transformamos os horas em minutos,
    //O dia tem 24 horas, 24 horas em minutos = 1440 minutos,
    //multiplica-se cigarros por 10 minutos,
    int cigarros = anosCtrl.text.isEmpty ? 0 : int.parse(cigarrosCtrl.text);
    double anos = anosCtrl.text.isEmpty ? 0 : double.parse(anosCtrl.text);
    //Conversões
    double minutosPerdidos = anos * 365 * cigarros * 10;
    double diasPerdidos = minutosPerdidos / (24 * 60);

    Get.snackbar(
      'Dias Perdidos',
      'Estima-se que você já perdeu ${diasPerdidos.toStringAsFixed(0)} dias de vida',
      duration: const Duration(seconds: 10),
    );
  }
}
