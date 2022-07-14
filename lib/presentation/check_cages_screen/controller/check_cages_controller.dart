import '/core/app_export.dart';
import 'package:grabbitapp/presentation/check_cages_screen/models/check_cages_model.dart';

class CheckCagesController extends GetxController {
  Rx<CheckCagesModel> checkCagesModelObj = CheckCagesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
