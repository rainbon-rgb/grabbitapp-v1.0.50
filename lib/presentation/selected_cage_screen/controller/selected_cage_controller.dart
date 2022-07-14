import '/core/app_export.dart';
import 'package:grabbitapp/presentation/selected_cage_screen/models/selected_cage_model.dart';

class SelectedCageController extends GetxController {
  Rx<SelectedCageModel> selectedCageModelObj = SelectedCageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
