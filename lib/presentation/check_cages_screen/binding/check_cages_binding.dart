import '../controller/check_cages_controller.dart';
import 'package:get/get.dart';

class CheckCagesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckCagesController());
  }
}
