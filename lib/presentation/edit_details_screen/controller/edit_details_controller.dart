import '/core/app_export.dart';
import 'package:grabbitapp/presentation/edit_details_screen/models/edit_details_model.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grabbitapp/firebase/models/models.dart';

class EditDetailsController extends GetxController {
  TextEditingController rabbitNameController = TextEditingController();

  TextEditingController rabbitTypeController = TextEditingController();

  TextEditingController rabbitWeightController = TextEditingController();

  TextEditingController dOPController = TextEditingController();

  TextEditingController cgaeNumberController = TextEditingController();

  Rx<EditDetailsModel> editDetailsModelObj = EditDetailsModel().obs;

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

  FirebaseFirestore firestoreInstance = FirebaseFirestore.instance;

  RabbitProfile rabbitProfileModelObj = RabbitProfile();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    rabbitNameController.dispose();
    rabbitTypeController.dispose();
    rabbitWeightController.dispose();
    dOPController.dispose();
    cgaeNumberController.dispose();
  }

  addRabbitProfileDocument(Map<String, dynamic> model) {
    firestoreInstance.collection("rabbitProfile").add(model).then((value) {
      onAddRabbitProfileSuccess();
    }).catchError((error) {
      print(error);
      onAddRabbitProfileError();
    });
  }

  onAddRabbitProfileSuccess() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Success",
        middleText: "Rabbit has been successfully registered");
  }

  onAddRabbitProfileError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Error",
        middleText: "Please check the details you entered");
  }
}
