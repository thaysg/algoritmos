import 'package:get/get.dart';
import './desafio_controller.dart';

class DesafioBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(DesafioController());
    }
}