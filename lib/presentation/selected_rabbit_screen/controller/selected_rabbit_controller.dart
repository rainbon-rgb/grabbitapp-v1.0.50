import '/core/app_export.dart';
import 'package:grabbitapp/presentation/selected_rabbit_screen/models/selected_rabbit_model.dart';
import 'package:flutter/material.dart';

class SelectedRabbitController extends GetxController {
  TextEditingController dateofAcquiController = TextEditingController();

  TextEditingController cagenumberController = TextEditingController();

  Rx<SelectedRabbitModel> selectedRabbitModelObj = SelectedRabbitModel().obs;

  RxList<SelectionPopupModel> autoCompleteItemList = [
    SelectionPopupModel(id: 1, title: "test", isSelected: true),
    SelectionPopupModel(id: 2, title: "test1"),
    SelectionPopupModel(id: 3, title: "test2")
  ].obs;

  RxList<SelectionPopupModel> autoCompleteItemList1 = [
    SelectionPopupModel(id: 1, title: "test", isSelected: true),
    SelectionPopupModel(id: 2, title: "test1"),
    SelectionPopupModel(id: 3, title: "test2")
  ].obs;

  RxList<SelectionPopupModel> autoCompleteItemList2 = [
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
    dateofAcquiController.dispose();
    cagenumberController.dispose();
  }
}
