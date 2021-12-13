import 'package:get/get.dart';
import './distancia_controller.dart';

class DistanciaBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(DistanciaController());
    }
}