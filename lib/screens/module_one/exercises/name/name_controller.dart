import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NameController extends GetxController {
  final TextEditingController name = TextEditingController();

  void showName() {
    if (name.text.isEmpty) {
      Get.snackbar(
        'Error',
        'Please enter your name',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
    Get.snackbar(
      'Nome do usuário',
      'Olá ${name.text}, é um prazer te conhecer!',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      duration: const Duration(seconds: 5),
    );
  }
}
