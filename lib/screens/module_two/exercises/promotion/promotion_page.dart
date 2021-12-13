import 'package:algoritmos/screens/widgets/body_app.dart';
import 'package:algoritmos/screens/widgets/title_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './promotion_controller.dart';

class PromotionPage extends GetView<PromotionController> {
  const PromotionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PromotionPage'),
      ),
      body: BodyApp(
        children: [
          const TitleWidget(
            title:
                ' Numa promoção exclusiva para o Dia da Mulher, uma loja quer dar descontos '
                'para todos, mas especialmente para mulheres. Faça um programa que leia nome, '
                'sexo e o valor das compras do cliente e calcule o preço com desconto. Sabendo '
                'que:'
                '\n- Homens ganham 5% de desconto'
                '\n- Mulheres ganham 13% de desconto',
          ),
          const SizedBox(height: 24),
          TextField(
            controller: controller.nameCtrl,
            decoration: InputDecoration(
              labelText: 'Digite seu nome',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.nameCtrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          TextField(
            controller: controller.genderCtrl,
            decoration: InputDecoration(
              labelText: 'Digite F ou M',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.genderCtrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          TextField(
            controller: controller.priceCtrl,
            decoration: InputDecoration(
              labelText: 'Digite o valor da compra',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.priceCtrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              controller.desconto();
            },
            child: const Text('Show Desconto'),
          ),
        ],
      ),
    );
  }
}
