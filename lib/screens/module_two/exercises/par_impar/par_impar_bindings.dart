import 'package:get/get.dart';
import './par_impar_controller.dart';

class ParImparBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(ParImparController());
    }
}