import 'package:get/get.dart';
import './promotion_controller.dart';

class PromotionBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(PromotionController());
    }
}