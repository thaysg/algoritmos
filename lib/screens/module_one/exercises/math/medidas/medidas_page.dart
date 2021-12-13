import 'package:algoritmos/screens/widgets/body_app.dart';
import 'package:algoritmos/screens/widgets/title_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './medidas_controller.dart';

class MedidasPage extends GetView<MedidasController> {
  const MedidasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MedidasController controller = Get.put(MedidasController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('MedidasPage'),
      ),
      body: BodyApp(
        children: [
          const TitleWidget(
            title:
                'Desenvolva um programa que leia uma distância em metros e mostre os valores'
                'relativos em outras medidas.'
                '\nEx:'
                '\nDigite uma distância em metros: 185.72'
                '\nA distância de 85.7m corresponde a:'
                '\n0.18572Km'
                '\n1.8572Hm'
                '\n18.572Dam'
                '\n1857.2dm'
                '\n18572.0cm'
                '\n185720.0mm',
          ),
          const SizedBox(height: 24),
          TextField(
            controller: controller.numberCtrl,
            decoration: InputDecoration(
              labelText: 'Digite uma Distância em Metros',
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
              controller.result();
            },
            child: const Text('Show Medidas'),
          ),
        ],
      ),
    );
  }
}
