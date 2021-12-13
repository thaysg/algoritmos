import 'package:get/get.dart';
import './subtraction_controller.dart';

class SubtractionBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(SubtractionController());
    }
}