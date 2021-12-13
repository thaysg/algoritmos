import 'package:algoritmos/screens/widgets/body_app.dart';
import 'package:algoritmos/screens/widgets/button_widget.dart';
import 'package:algoritmos/screens/widgets/title_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './desafio_controller.dart';

class DesafioPage extends GetView<DesafioController> {
  const DesafioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desafio Cigarro'),
      ),
      body: BodyApp(
        children: [
          const TitleWidget(
            title:
                'Escreva um programa para calcular a redução do tempo de vida de um '
                'fumante. Pergunte a quantidade de cigarros fumados por dias e quantos anos ele '
                'já fumou. Considere que um fumante perde 10 min de vida a cada cigarro. Calcule '
                'quantos dias de vida um fumante perderá e exiba o total em dias.',
          ),
          const SizedBox(height: 24),
          TextField(
            controller: controller.cigarrosCtrl,
            decoration: InputDecoration(
              labelText: 'Digite quantos cigarros você fuma por dia',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.cigarrosCtrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24),
          TextField(
            controller: controller.anosCtrl,
            decoration: InputDecoration(
              labelText: 'Digite há quantos você já fumou',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.anosCtrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24),
          ButtonWidget(
            onTap: () {
              controller.diasPerdidos();
            },
            title: 'Show Result',
          ),
        ],
      ),
    );
  }
}
