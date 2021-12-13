import 'package:get/get.dart';
import './media_controller.dart';

class MediaBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(MediaController());
    }
}