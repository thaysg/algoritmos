import 'package:algoritmos/screens/widgets/body_app.dart';
import 'package:algoritmos/screens/widgets/title_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './sum_controller.dart';

class SumPage extends GetView<SumController> {
  const SumPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SumController controller = Get.put(SumController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('SumPage'),
      ),
      body: BodyApp(
        children: [
          const TitleWidget(
            title:
                'Desenvolva um algoritmo que leia dois números inteiros e mostre o somatório '
                'entre eles.',
          ),
          const SizedBox(height: 24),
          TextField(
            controller: controller.sum1Ctrl,
            decoration: InputDecoration(
              labelText: 'Digite o Primeiro Número',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.sum1Ctrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          TextField(
            controller: controller.sum2Ctrl,
            decoration: InputDecoration(
              labelText: 'Digite o Segundo Número',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.sum2Ctrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              controller.sum();
            },
            child: const Text('Somar'),
          ),
        ],
      ),
    );
  }
}
