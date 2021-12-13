import 'package:algoritmos/screens/widgets/body_app.dart';
import 'package:algoritmos/screens/widgets/title_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './desafio_dois_controller.dart';

class DesafioDoisPage extends GetView<DesafioDoisController> {
  const DesafioDoisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DesafioDoisPage'),
      ),
      body: BodyApp(
        children: [
          const TitleWidget(
            title:
                'Crie um programa que leia o tamanho de três segmentos de reta. '
                'Analise seus comprimentos e diga se é possível formar um triângulo com essas '
                'retas. Matematicamente, para três segmentos formarem um triângulo, o comprimento '
                'de cada lado deve ser menor que a soma dos outros dois.',
          ),
          const SizedBox(height: 24),
          TextField(
            controller: controller.aCtrl,
            decoration: InputDecoration(
              labelText: 'Primeiro Número',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.aCtrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          TextField(
            controller: controller.bCtrl,
            decoration: InputDecoration(
              labelText: 'Segundo Número',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.bCtrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          TextField(
            controller: controller.cCtrl,
            decoration: InputDecoration(
              labelText: 'Terceiro Número',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.cCtrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              controller.triangulo();
            },
            child: const Text('Show Resultado'),
          ),
        ],
      ),
    );
  }
}
