import 'package:get/get.dart';
import './name_controller.dart';

class NameBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(NameController());
    }
}