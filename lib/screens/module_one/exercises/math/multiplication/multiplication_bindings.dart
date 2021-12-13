import 'package:get/get.dart';
import './multiplication_controller.dart';

class MultiplicationBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(MultiplicationController());
    }
}