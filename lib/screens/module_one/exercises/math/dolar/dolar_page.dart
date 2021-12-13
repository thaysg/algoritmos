import 'package:algoritmos/screens/widgets/body_app.dart';
import 'package:algoritmos/screens/widgets/title_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './dolar_controller.dart';

class DolarPage extends GetView<DolarController> {
  const DolarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DolarController controller = Get.put(DolarController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('DolarPage'),
      ),
      body: BodyApp(
        children: [
          const TitleWidget(
            title:
                ' Faça um algoritmo que leia quanto dinheiro uma pessoa tem na carteira (em R\$)'
                'e mostre quantos dólares ela pode comprar. Considere US\$1,00 = R\$5,60.',
          ),
          const SizedBox(height: 24),
          TextField(
            controller: controller.dolarController,
            decoration: InputDecoration(
              labelText: 'Digite Quanto tem na Carteira',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.dolarController.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              controller.dolar();
            },
            child: const Text('Show Valor'),
          ),
        ],
      ),
    );
  }
}
