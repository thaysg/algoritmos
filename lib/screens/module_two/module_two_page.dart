import 'package:algoritmos/routes/app_pages.dart';
import 'package:algoritmos/screens/widgets/my_container.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './module_two_controller.dart';

class ModuleTwoPage extends GetView<ModuleTwoController> {
  const ModuleTwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ModuleTwoPage'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: MyContainer(
                  onPressed: () {
                    Get.toNamed(
                      Routes.vel,
                    );
                  },
                  text: 'Velocidade',
                ),
              ),
              Expanded(
                child: MyContainer(
                  onPressed: () {
                    Get.toNamed(
                      Routes.voto,
                    );
                  },
                  text: 'Votar',
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: MyContainer(
                  onPressed: () {
                    Get.toNamed(Routes.parI);
                  },
                  text: 'Par ou Impar',
                ),
              ),
              Expanded(
                child: MyContainer(
                  onPressed: () {
                    Get.toNamed(Routes.bis);
                  },
                  text: 'Ano Bissexto',
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: MyContainer(
                  onPressed: () {
                    Get.toNamed(Routes.alist);
                  },
                  text: 'Alistamento Militar',
                ),
              ),
              Expanded(
                child: MyContainer(
                  onPressed: () {
                    Get.toNamed(Routes.prom);
                  },
                  text: 'Promoção',
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: MyContainer(
                  onPressed: () {
                    Get.toNamed(Routes.dist);
                  },
                  text: 'Distância',
                ),
              ),
              Expanded(
                child: MyContainer(
                  onPressed: () {
                    Get.toNamed(Routes.desf2);
                  },
                  text: 'Desafio 2',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
