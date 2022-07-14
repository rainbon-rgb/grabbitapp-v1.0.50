import '../controller/selected_cage_controller.dart';
import 'package:get/get.dart';

class SelectedCageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectedCageController());
  }
}
