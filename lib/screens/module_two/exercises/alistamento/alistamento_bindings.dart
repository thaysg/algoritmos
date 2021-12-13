import 'package:get/get.dart';
import './alistamento_controller.dart';

class AlistamentoBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(AlistamentoController());
    }
}