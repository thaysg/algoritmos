import 'package:algoritmos/screens/widgets/body_app.dart';
import 'package:algoritmos/screens/widgets/title_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './votar_controller.dart';

class VotarPage extends GetView<VotarController> {
  const VotarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VotarPage'),
      ),
      body: BodyApp(
        children: [
          const TitleWidget(
            title:
                ' Faça um programa que leia o ano de nascimento de uma pessoa, calcule a idade '
                'dela e depois mostre se ela pode ou não votar.',
          ),
          const SizedBox(height: 24),
          TextField(
            controller: controller.votoCtrl,
            decoration: InputDecoration(
              labelText: 'Digite o ano de nascimento',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.votoCtrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              controller.votar();
            },
            child: const Text('Show Idade'),
          ),
        ],
      ),
    );
  }
}
