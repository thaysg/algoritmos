import 'package:get/get.dart';
import './votar_controller.dart';

class VotarBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(VotarController());
    }
}