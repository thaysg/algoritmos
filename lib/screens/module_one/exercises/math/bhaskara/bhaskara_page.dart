import 'package:algoritmos/screens/widgets/body_app.dart';
import 'package:algoritmos/screens/widgets/title_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './bhaskara_controller.dart';

class BhaskaraPage extends GetView<BhaskaraController> {
  const BhaskaraPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BhaskaraController controller = Get.put(BhaskaraController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('BhaskaraPage'),
      ),
      body: BodyApp(
        children: [
          const TitleWidget(
            title:
                'Desenvolva uma lógica que leia os valores de A, B e C de uma equação do '
                'segundo grau e mostre o valor de Delta.',
          ),
          const SizedBox(height: 24),
          const SizedBox(height: 24),
          TextField(
            controller: controller.a,
            decoration: InputDecoration(
              labelText: 'Digite o Valor de A',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.a.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24),
          TextField(
            controller: controller.b,
            decoration: InputDecoration(
              labelText: 'Digite o Valor de B',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.b.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24),
          TextField(
            controller: controller.c,
            decoration: InputDecoration(
              labelText: 'Digite o Valor de C',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.c.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              controller.result();
            },
            child: const Text('Resultado'),
          ),
        ],
      ),
    );
  }
}
