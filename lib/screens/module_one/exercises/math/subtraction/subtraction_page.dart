import 'package:algoritmos/screens/widgets/body_app.dart';
import 'package:algoritmos/screens/widgets/title_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './subtraction_controller.dart';

class SubtractionPage extends GetView<SubtractionController> {
  const SubtractionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SubtractionController controller = Get.put(SubtractionController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('SubtractionPage'),
      ),
      body: BodyApp(
        children: [
          const TitleWidget(
            title: 'Digite um número: ',
          ),
          TextField(
            controller: controller.sub1Ctrl,
            decoration: InputDecoration(
              labelText: 'Digite o Primeiro Número',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.sub1Ctrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          TextField(
            controller: controller.sub2Ctrl,
            decoration: InputDecoration(
              labelText: 'Digite o Segundo Número',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.sub2Ctrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              controller.sub();
            },
            child: const Text('Resultado'),
          ),
        ],
      ),
    );
  }
}
