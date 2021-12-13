import 'package:algoritmos/screens/widgets/body_app.dart';
import 'package:algoritmos/screens/widgets/title_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './double_and_terca_controller.dart';

class DoubleAndTercaPage extends GetView<DoubleAndTercaController> {
  const DoubleAndTercaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DoubleAndTercaController controller = Get.put(DoubleAndTercaController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('DoubleAndTercaPage'),
      ),
      body: BodyApp(
        children: [
          const TitleWidget(
            title:
                ' Crie um algoritmo que leia um número real e mostre na tela o seu dobro e a'
                'sua terça parte.'
                '\nEx:'
                '\nDigite um número: 3.5'
                '\nO dobro de 3.5 é 7.0'
                '\nA terça parte de 3.5 é 1.16666',
          ),
          const SizedBox(height: 24),
          TextField(
            controller: controller.numberCtrl,
            decoration: InputDecoration(
              labelText: 'Digite um Número',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.numberCtrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              controller.showNumber();
            },
            child: const Text('Show Number'),
          ),
        ],
      ),
    );
  }
}
