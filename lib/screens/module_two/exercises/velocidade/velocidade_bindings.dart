import 'package:get/get.dart';
import './velocidade_controller.dart';

class VelocidadeBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(VelocidadeController());
    }
}