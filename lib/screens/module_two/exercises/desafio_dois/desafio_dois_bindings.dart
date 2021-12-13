import 'package:get/get.dart';
import './desafio_dois_controller.dart';

class DesafioDoisBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(DesafioDoisController());
    }
}