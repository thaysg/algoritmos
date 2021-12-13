import 'package:get/get.dart';
import './module_two_controller.dart';

class ModuleTwoBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(ModuleTwoController());
    }
}