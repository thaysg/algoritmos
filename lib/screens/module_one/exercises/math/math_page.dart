import 'package:algoritmos/routes/app_pages.dart';
import 'package:algoritmos/screens/widgets/my_container.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './math_controller.dart';

class MathPage extends GetView<MathController> {
  const MathPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MathPage'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: MyContainer(
                      onPressed: () {
                        Get.toNamed(
                          Routes.sum,
                        );
                      },
                      text: 'Soma',
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                      onPressed: () {
                        Get.toNamed(
                          Routes.sub,
                        );
                      },
                      text: 'Subtração',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: MyContainer(
                      onPressed: () {
                        Get.toNamed(
                          Routes.div,
                        );
                      },
                      text: 'Divisão',
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                      onPressed: () {
                        Get.toNamed(
                          Routes.mult,
                        );
                      },
                      text: 'Multiplicação',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: MyContainer(
                      onPressed: () {
                        Get.toNamed(Routes.bhask);
                      },
                      text: 'Bhaskara',
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                      onPressed: () {
                        Get.toNamed(Routes.doubleT);
                      },
                      text: 'Dobro e Terça Parte',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: MyContainer(
                      onPressed: () {
                        Get.toNamed(Routes.medidas);
                      },
                      text: 'Medidas',
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                      onPressed: () {
                        Get.toNamed(Routes.desconto);
                      },
                      text: 'Desconto',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: MyContainer(
                      onPressed: () {
                        Get.toNamed(Routes.dolar);
                      },
                      text: 'Dolar',
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                      onPressed: () {
                        Get.toNamed(Routes.area);
                      },
                      text: 'Area',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
