import 'package:get/get.dart';
import './sum_controller.dart';

class SumBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(SumController());
    }
}