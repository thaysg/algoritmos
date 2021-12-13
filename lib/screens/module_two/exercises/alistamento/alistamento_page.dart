import 'package:algoritmos/screens/widgets/body_app.dart';
import 'package:algoritmos/screens/widgets/title_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './alistamento_controller.dart';

class AlistamentoPage extends GetView<AlistamentoController> {
  const AlistamentoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlistamentoPage'),
      ),
      body: BodyApp(
        children: [
          const TitleWidget(
            title:
                '  Escreva um programa que leia o ano de nascimento de um rapaz e mostre a sua '
                'situação em relação ao alistamento militar. '
                '- Se estiver antes dos 18 anos, mostre em quantos anos faltam para o '
                'alistamento.'
                '- Se já tiver depois dos 18 anos, mostre quantos anos já se passaram do '
                'alistamento.',
          ),
          const SizedBox(height: 24),
          TextField(
            controller: controller.anoCtrl,
            decoration: InputDecoration(
              labelText: 'Digite o ano de seu nascimento',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.anoCtrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              controller.alistar();
            },
            child: const Text('Show Ano'),
          ),
        ],
      ),
    );
  }
}
