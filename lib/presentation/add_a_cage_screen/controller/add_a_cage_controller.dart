import '/core/app_export.dart';
import 'package:grabbitapp/presentation/add_a_cage_screen/models/add_a_cage_model.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grabbitapp/firebase/models/models.dart';

class AddACageController extends GetxController {
  TextEditingController cageNameController = TextEditingController();

  TextEditingController cageDescController = TextEditingController();

  Rx<AddACageModel> addACageModelObj = AddACageModel().obs;

  FirebaseFirestore firestoreInstance = FirebaseFirestore.instance;

  Cage cageModelObj = Cage();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    cageNameController.dispose();
    cageDescController.dispose();
  }

  addCageDocument(Map<String, dynamic> model) {
    firestoreInstance.collection("cage").add(model).then((value) {
      onAddCageSuccess();
    }).catchError((error) {
      print(error);
      onAddCageError();
    });
  }

  onAddCageSuccess() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Success",
        middleText: "Cage added");
  }

  onAddCageError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Error",
        middleText: "Cage not Added!");
  }
}
