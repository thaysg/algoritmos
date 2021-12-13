import 'package:algoritmos/screens/widgets/body_app.dart';
import 'package:algoritmos/screens/widgets/button_widget.dart';
import 'package:algoritmos/screens/widgets/title_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './name_controller.dart';

class NamePage extends GetView<NameController> {
  const NamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NameController controller = Get.put(NameController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('NamePage'),
      ),
      body: BodyApp(
        children: [
          const TitleWidget(
            title: 'Digite seu nome:',
          ),
          const SizedBox(height: 24),
          TextField(
            controller: controller.name,
            decoration: InputDecoration(
              labelText: 'Name',
              suffixIcon: IconButton(
                onPressed: () {
                  controller.name.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 24),
          ButtonWidget(
              onTap: () {
                controller.showName();
              },
              title: 'Show Name'),
        ],
      ),
    );
  }
}
