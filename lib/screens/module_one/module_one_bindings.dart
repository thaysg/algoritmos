import 'package:get/get.dart';
import './module_one_controller.dart';

class ModuleOneBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(ModuleOneController());
    }
}