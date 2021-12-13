import 'package:algoritmos/screens/widgets/body_app.dart';
import 'package:algoritmos/screens/widgets/title_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './par_impar_controller.dart';

class ParImparPage extends GetView<ParImparController> {
  const ParImparPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ParImparPage'),
      ),
      body: BodyApp(
        children: [
          const TitleWidget(
            title:
                ' Desenvolva um programa que leia um número inteiro e mostre se ele é PAR ou '
                'ÍMPAR.',
          ),
          const SizedBox(height: 24),
          TextField(
            controller: controller.numeroCtrl,
            decoration: InputDecoration(
              labelText: 'Digite um número',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.numeroCtrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              controller.parImpar();
            },
            child: const Text('Show Numero'),
          ),
        ],
      ),
    );
  }
}
