import 'package:algoritmos/screens/widgets/body_app.dart';
import 'package:algoritmos/screens/widgets/title_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './nex_and_previously_controller.dart';

class NexAndPreviouslyPage extends GetView<NexAndPreviouslyController> {
  const NexAndPreviouslyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NexAndPreviouslyController controller =
        Get.put(NexAndPreviouslyController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('NexAndPreviouslyPage'),
      ),
      body: BodyApp(
        children: [
          const TitleWidget(
            title:
                'Faça um programa que leia um número inteiro e mostre o seu antecessor e seu'
                'sucessor.'
                '\nEx:'
                '\nDigite um número: 9'
                '\nO antecessor de 9 é 8'
                '\nO sucessor de 9 é 10',
          ),
          const SizedBox(height: 24),
          TextField(
            controller: controller.numberCtrl,
            decoration: InputDecoration(
              labelText: 'Número',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.numberCtrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              controller.showNumber();
            },
            child: const Text('Show Number'),
          ),
        ],
      ),
    );
  }
}
