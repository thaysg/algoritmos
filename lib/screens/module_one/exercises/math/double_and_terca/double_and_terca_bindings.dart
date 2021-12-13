import 'package:get/get.dart';
import './double_and_terca_controller.dart';

class DoubleAndTercaBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(DoubleAndTercaController());
    }
}