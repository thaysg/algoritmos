import 'package:algoritmos/screens/widgets/body_app.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './multiplication_controller.dart';

class MultiplicationPage extends GetView<MultiplicationController> {
  const MultiplicationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MultiplicationController controller = Get.put(MultiplicationController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('MultiplicationPage'),
      ),
      body: BodyApp(
        children: [
          TextField(
            controller: controller.mult1Ctrl,
            decoration: InputDecoration(
              labelText: 'Digite o Primeiro Número',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.mult1Ctrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          TextField(
            controller: controller.mult2Ctrl,
            decoration: InputDecoration(
              labelText: 'Digite o Segundo Número',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.mult2Ctrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          ElevatedButton(
            onPressed: () {
              controller.mult();
            },
            child: const Text('Resultado'),
          ),
        ],
      ),
      /* Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            const Text('Digite um número: '),
            TextField(
              controller: controller.mult1Ctrl,
              decoration: InputDecoration(
                labelText: 'Primeiro Número',
                suffixIcon: IconButton(
                  onPressed: () {
                    controller.mult1Ctrl.clear();
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
              controller: controller.mult2Ctrl,
              decoration: InputDecoration(
                labelText: 'Segundo Número',
                suffixIcon: IconButton(
                  onPressed: () {
                    controller.mult2Ctrl.clear();
                  },
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                controller.mult();
              },
              child: const Text('Resultado'),
            ),
          ],
        ),
      ), */
    );
  }
}
