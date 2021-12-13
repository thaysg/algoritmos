import 'package:get/get.dart';
import './bissexto_controller.dart';

class BissextoBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(BissextoController());
    }
}