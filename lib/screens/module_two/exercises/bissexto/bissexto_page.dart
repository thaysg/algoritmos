import 'package:algoritmos/screens/widgets/body_app.dart';
import 'package:algoritmos/screens/widgets/title_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './bissexto_controller.dart';

class BissextoPage extends GetView<BissextoController> {
  const BissextoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BissextoPage'),
      ),
      body: BodyApp(
        children: [
          const TitleWidget(
            title:
                ' Faça um algoritmo que leia um determinado ano e mostre se ele é ou não '
                'BISSEXTO.',
          ),
          const SizedBox(height: 24),
          TextField(
            controller: controller.anoController,
            decoration: InputDecoration(
              labelText: 'Digite o ano',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.anoController.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              controller.bissexto();
            },
            child: const Text('Show Ano'),
          ),
        ],
      ),
    );
  }
}
