import 'package:get/get.dart';
import './math_controller.dart';

class MathBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(MathController());
    }
}