import 'package:get/get.dart';
import 'package:portfolio/view/mainscreen/mainscreen_controller.dart';

class MainScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainScreenController());
  }
}
