import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NexAndPreviouslyController extends GetxController {
  final TextEditingController numberCtrl = TextEditingController();

  void showNumber() {
    int number;
    number = numberCtrl.text.isEmpty ? 0 : int.parse(numberCtrl.text);
    final next = number + 1;
    final previous = number - 1;
    update();
    Get.snackbar(
      'Sucessor e Antecessor ',
      'O sucessor de $number é $next e seu antecessor é $previous ',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      duration: const Duration(seconds: 15),
    );
  }
}
