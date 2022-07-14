import '/core/app_export.dart';
import 'package:grabbitapp/presentation/transfer_a_rabbit_bottomsheet/models/transfer_a_rabbit_model.dart';

class TransferARabbitController extends GetxController {
  Rx<TransferARabbitModel> transferARabbitModelObj = TransferARabbitModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(id: 1, title: "test", isSelected: true),
    SelectionPopupModel(id: 2, title: "test1"),
    SelectionPopupModel(id: 3, title: "test2")
  ].obs;

  SelectionPopupModel? selectedDropDownValue1;

  RxList<SelectionPopupModel> dropdownItemList1 = [
    SelectionPopupModel(id: 1, title: "test", isSelected: true),
    SelectionPopupModel(id: 2, title: "test1"),
    SelectionPopupModel(id: 3, title: "test2")
  ].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    selectedDropDownValue1 = value as SelectionPopupModel;
    dropdownItemList1.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    dropdownItemList1.refresh();
  }
}
