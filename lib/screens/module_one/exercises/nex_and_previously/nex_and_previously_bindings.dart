import 'package:get/get.dart';
import './nex_and_previously_controller.dart';

class NexAndPreviouslyBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(NexAndPreviouslyController());
    }
}