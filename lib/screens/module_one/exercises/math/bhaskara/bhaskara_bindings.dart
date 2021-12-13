import 'package:get/get.dart';
import './bhaskara_controller.dart';

class BhaskaraBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(BhaskaraController());
    }
}