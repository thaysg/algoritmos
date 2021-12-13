import 'package:get/get.dart';
import './desconto_controller.dart';

class DescontoBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(DescontoController());
    }
}