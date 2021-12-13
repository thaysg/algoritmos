import 'package:get/get.dart';
import './dolar_controller.dart';

class DolarBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(DolarController());
    }
}