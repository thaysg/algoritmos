import 'package:algoritmos/screens/widgets/body_app.dart';
import 'package:algoritmos/screens/widgets/title_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './velocidade_controller.dart';

class VelocidadePage extends GetView<VelocidadeController> {
  const VelocidadePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VelocidadePage'),
      ),
      body: BodyApp(
        children: [
          const TitleWidget(
            title:
                ' Escreva um programa que pergunte a velocidade de um carro. Caso ultrapasse '
                '80Km/h, exiba uma mensagem dizendo que o usuário foi multado. Nesse caso, exiba '
                'o valor da multa, cobrando R\$5 por cada Km acima da velocidade permitida.',
          ),
          const SizedBox(height: 24),
          TextField(
            controller: controller.velocidadeCtrl,
            decoration: InputDecoration(
              labelText: 'Digite a velocidade do carro',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.velocidadeCtrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              controller.velocidade();
            },
            child: const Text('Show Velocidade'),
          ),
        ],
      ),
    );
  }
}
