import 'package:algoritmos/screens/widgets/body_app.dart';
import 'package:algoritmos/screens/widgets/title_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './area_controller.dart';

class AreaPage extends GetView<AreaController> {
  const AreaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AreaController controller = Get.put(AreaController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('AreaPage'),
      ),
      body: BodyApp(
        children: [
          const TitleWidget(
            title:
                'Faça um algoritmo que leia a largura e altura de uma parede, calcule e'
                'mostre a área a ser pintada e a quantidade de tinta necessária para o serviço,'
                'sabendo que cada litro de tinta pinta uma área de 2metros quadrados.',
          ),
          const SizedBox(height: 24),
          TextField(
            controller: controller.larguraCtrl,
            decoration: InputDecoration(
              labelText: 'Digite a Largura',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.larguraCtrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24),
          TextField(
            controller: controller.comprimentoCtrl,
            decoration: InputDecoration(
              labelText: 'Digite a Altura',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.comprimentoCtrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              controller.area();
            },
            child: const Text('Area'),
          ),
        ],
      ),
      /* Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            const Text(
              'Faça um algoritmo que leia a largura e altura de uma parede, calcule e'
              'mostre a área a ser pintada e a quantidade de tinta necessária para o serviço,'
              'sabendo que cada litro de tinta pinta uma área de 2metros quadrados.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            const Text('Digite um número: '),
            TextField(
              controller: controller.larguraCtrl,
              decoration: InputDecoration(
                labelText: 'Primeiro Número',
                suffixIcon: IconButton(
                  onPressed: () {
                    controller.larguraCtrl.clear();
                  },
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),
            const Divider(
              height: 24.0,
            ),
            const Text('Digite um número: '),
            TextField(
              controller: controller.comprimentoCtrl,
              decoration: InputDecoration(
                labelText: 'Segundo Número',
                suffixIcon: IconButton(
                  onPressed: () {
                    controller.comprimentoCtrl.clear();
                  },
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                controller.area();
              },
              child: const Text('Area'),
            ),
          ],
        ),
      ), */
    );
  }
}
