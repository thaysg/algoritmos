import 'package:algoritmos/screens/widgets/body_app.dart';
import 'package:algoritmos/screens/widgets/title_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './distancia_controller.dart';

class DistanciaPage extends GetView<DistanciaController> {
  const DistanciaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DistanciaPage'),
      ),
      body: BodyApp(
        children: [
          const TitleWidget(
            title:
                ' Faça um algoritmo que pergunte a distância que um passageiro deseja '
                'percorrer em Km. Calcule o preço da passagem, cobrando R\$0.50 por Km para '
                'viagens até 200Km e R\$0.45 para viagens mais longas.',
          ),
          const SizedBox(height: 24),
          TextField(
            controller: controller.distanciaCtrl,
            decoration: InputDecoration(
              labelText: 'Digite a distância:',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.distanciaCtrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              controller.distancia();
            },
            child: const Text('Show Distancia'),
          ),
        ],
      ),
    );
  }
}
