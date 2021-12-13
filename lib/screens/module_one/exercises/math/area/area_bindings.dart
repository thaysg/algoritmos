import 'package:get/get.dart';
import './area_controller.dart';

class AreaBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(AreaController());
    }
}