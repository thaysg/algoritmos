import 'package:algoritmos/screens/widgets/body_app.dart';
import 'package:algoritmos/screens/widgets/title_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './division_controller.dart';

class DivisionPage extends GetView<DivisionController> {
  const DivisionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DivisionController controller = Get.put(DivisionController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('DivisionPage'),
      ),
      body: BodyApp(
        children: [
          const TitleWidget(title: 'Divisão Inteira '),
          const SizedBox(height: 24.0),
          TextField(
            controller: controller.div1Ctrl,
            decoration: InputDecoration(
              labelText: 'Digite o Primeiro Número',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.div1Ctrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          TextField(
            controller: controller.div2Ctrl,
            decoration: InputDecoration(
              labelText: 'Digite o Segundo Número',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.div2Ctrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          ElevatedButton(
            onPressed: () {
              controller.divInt();
            },
            child: const Text('Resultado'),
          ),
          const SizedBox(height: 24.0),
          const TitleWidget(title: 'Divisão Resto '),
          const SizedBox(height: 24.0),
          TextField(
            controller: controller.div1Ctrl,
            decoration: InputDecoration(
              labelText: 'Digite o Primeiro Número',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.div1Ctrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          TextField(
            controller: controller.div2Ctrl,
            decoration: InputDecoration(
              labelText: 'Digite o Segundo Número',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.div2Ctrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          ElevatedButton(
            onPressed: () {
              controller.divRest();
            },
            child: const Text('Resultado'),
          ),
        ],
      ),
    );
  }
}
