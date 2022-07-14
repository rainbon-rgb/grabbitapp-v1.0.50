import '/core/app_export.dart';
import 'package:grabbitapp/presentation/rabbit_details_for_meat_selling_screen/models/rabbit_details_for_meat_selling_model.dart';
import 'package:flutter/material.dart';

class RabbitDetailsForMeatSellingController extends GetxController {
  TextEditingController rabbitNameController = TextEditingController();

  TextEditingController rabbitTypeController = TextEditingController();

  TextEditingController rabbitBreedController = TextEditingController();

  TextEditingController dOAPController = TextEditingController();

  TextEditingController cageController = TextEditingController();

  Rx<RabbitDetailsForMeatSellingModel> rabbitDetailsForMeatSellingModelObj =
      RabbitDetailsForMeatSellingModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    rabbitNameController.dispose();
    rabbitTypeController.dispose();
    rabbitBreedController.dispose();
    dOAPController.dispose();
    cageController.dispose();
  }
}
