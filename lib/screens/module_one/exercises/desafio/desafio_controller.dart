import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesafioController extends GetxController {
  TextEditingController cigarrosCtrl = TextEditingController();
  TextEditingController anosCtrl = TextEditingController();

  void diasPerdidos() {
    //já que a cada cigarro perde 10 minutos de vida, transformamos os horas em minutos,
    //O dia tem 24 horas, 24 horas em minutos = 1440 minutos,
    //multiplica-se cigarros por 10 minutos,
    int cigarrosPordia =
        anosCtrl.text.isEmpty ? 0 : int.parse(cigarrosCtrl.text);
    double anosFumando =
        anosCtrl.text.isEmpty ? 0 : double.parse(anosCtrl.text);
    //Converter anos em dias
    double diasFumando = anosFumando * 365;
    //----------
    /* double cigarrosFumado = cigarrosPordia * diasFumando;
    double minutosPerdidos = cigarrosFumado * 10; */
    double minutosPerdidos = cigarrosPordia * 10;
    double cigarrosFumado = minutosPerdidos * diasFumando;
    //Converter horas em minutos
    double horasEmMinuto = 24 * 60;

    double diasPerdidos = cigarrosFumado / horasEmMinuto;

    Get.snackbar(
      'Dias Perdidos',
      'Estima-se que você já perdeu ${diasPerdidos.toStringAsFixed(0)} dias de vida',
      duration: const Duration(seconds: 10),
    );
  }
}
