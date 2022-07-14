import '../controller/add_a_cage_controller.dart';
import 'package:get/get.dart';

class AddACageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddACageController());
  }
}
