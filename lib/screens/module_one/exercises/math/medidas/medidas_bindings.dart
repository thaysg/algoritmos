import 'package:get/get.dart';
import './medidas_controller.dart';

class MedidasBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(MedidasController());
    }
}