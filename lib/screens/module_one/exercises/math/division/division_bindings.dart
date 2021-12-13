import 'package:get/get.dart';
import './division_controller.dart';

class DivisionBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(DivisionController());
    }
}