import 'package:algoritmos/routes/app_pages.dart';
import 'package:algoritmos/screens/module_one/module_one_page.dart';
import 'package:algoritmos/screens/widgets/container_module.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            ContainerModule(
              title: 'Module 1 \n Algoritmos',
              onTap: () {
                Get.toNamed(
                  Routes.modOne,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
