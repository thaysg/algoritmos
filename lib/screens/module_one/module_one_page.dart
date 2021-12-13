import 'package:algoritmos/routes/app_pages.dart';
import 'package:algoritmos/screens/widgets/my_container.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './module_one_controller.dart';

class ModuleOnePage extends GetView<ModuleOneController> {
  const ModuleOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ModuleOnePage'),
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
                      Routes.name,
                    );
                  },
                  text: 'Digite seu nome',
                ),
              ),
              Expanded(
                child: MyContainer(
                  onPressed: () {
                    Get.toNamed(
                      Routes.math,
                    );
                  },
                  text: 'Math',
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: MyContainer(
                  onPressed: () {
                    Get.toNamed(Routes.media);
                  },
                  text: 'Média Aluno',
                ),
              ),
              Expanded(
                child: MyContainer(
                  onPressed: () {
                    Get.toNamed(Routes.nextP);
                  },
                  text: 'Sucessor e Antecessor',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
