import 'package:algoritmos/screens/widgets/body_app.dart';
import 'package:algoritmos/screens/widgets/title_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './desconto_controller.dart';

class DescontoPage extends GetView<DescontoController> {
  const DescontoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DescontoController controller = Get.put(DescontoController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('DescontoPage'),
      ),
      body: BodyApp(
        children: [
          const TitleWidget(
            title:
                'Crie um programa que leia o preço de um produto, calcule e mostre o seu'
                'PREÇO PROMOCIONAL, com 5% de desconto.',
          ),
          const SizedBox(height: 24),
          TextField(
            controller: controller.descCtrl,
            decoration: InputDecoration(
              labelText: 'Digite o Valor do Produto',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.descCtrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              controller.promo();
            },
            child: const Text('Show Desconto'),
          ),
        ],
      ),
    );
  }
}
