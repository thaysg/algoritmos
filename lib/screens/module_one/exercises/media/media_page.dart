import 'package:algoritmos/screens/widgets/body_app.dart';
import 'package:algoritmos/screens/widgets/button_widget.dart';
import 'package:algoritmos/screens/widgets/title_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './media_controller.dart';

class MediaPage extends GetView<MediaController> {
  const MediaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaController controller = Get.put(MediaController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaPage'),
      ),
      body: BodyApp(
        children: [
          const TitleWidget(
            title:
                ' Faça um programa que leia as duas notas de um aluno em uma matéria e mostre'
                'na tela a sua média na disciplina.'
                'Ex:'
                'Nota 1: 4.5'
                'Nota 2: 8.5'
                'A média entre 4.5 e 8.5 é igual a 6.5',
          ),
          const SizedBox(height: 24),
          TextField(
            controller: controller.nota1Ctrl,
            decoration: InputDecoration(
              labelText: 'Digite a Primeira Nota',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.nota1Ctrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24),
          TextField(
            controller: controller.nota2Ctrl,
            decoration: InputDecoration(
              labelText: 'Digite a Segunda Nota',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.nota2Ctrl.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24),
          ButtonWidget(
            onTap: () {
              controller.media();
            },
            title: 'Resultado',
          ),
        ],
      ),
    );
  }
}
