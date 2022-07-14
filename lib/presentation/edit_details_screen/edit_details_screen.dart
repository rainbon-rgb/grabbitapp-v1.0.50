import 'controller/edit_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbitapp/core/app_export.dart';
import 'package:grabbitapp/core/utils/validation_functions.dart';

// ignore_for_file: must_be_immutable
class EditDetailsScreen extends GetWidget<EditDetailsController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        child: Container(
                            decoration:
                            BoxDecoration(color: ColorConstant.whiteA700),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(22.00),
                                          top: getVerticalSize(45.00),
                                          right: getHorizontalSize(22.00)),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(56.00)),
                                          child: Image.asset(
                                              ImageConstant.img11,
                                              height: getVerticalSize(112.00),
                                              width: getHorizontalSize(144.00),
                                              fit: BoxFit.fill))),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(22.00),
                                          top: getVerticalSize(32.00),
                                          right: getHorizontalSize(22.00)),
                                      child: Container(
                                          height: getVerticalSize(50.00),
                                          width: getHorizontalSize(311.00),
                                          child: TextFormField(
                                              focusNode: FocusNode(),
                                              validator: (value) {
                                                if (value == null ||
                                                    (!isText(value,
                                                        isRequired: true))) {
                                                  return "Please enter valid text";
                                                }
                                                return null;
                                              },
                                              keyboardType: TextInputType.text,
                                              controller: controller
                                                  .rabbitNameController,
                                              decoration: InputDecoration(
                                                  hintText:
                                                  "lbl_rabbit_name".tr,
                                                  hintStyle: AppStyle
                                                      .textstylerobotoregular14
                                                      .copyWith(
                                                      fontSize:
                                                      getFontSize(14.0),
                                                      color: ColorConstant
                                                          .black90060),
                                                  enabledBorder: OutlineInputBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              15.00)),
                                                      borderSide: BorderSide(
                                                          color:
                                                          ColorConstant.black9001e,
                                                          width: 1)),
                                                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(15.00)), borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                  disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(15.00)), borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                  isDense: true,
                                                  contentPadding: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(15.00), right: getHorizontalSize(30.00), bottom: getVerticalSize(15.00))),
                                              style: TextStyle(color: ColorConstant.black90060, fontSize: getFontSize(14.0), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(22.00),
                                          top: getVerticalSize(12.00),
                                          right: getHorizontalSize(22.00)),
                                      child: Container(
                                          height: getVerticalSize(50.00),
                                          width: getHorizontalSize(311.00),
                                          child: TextFormField(
                                              focusNode: FocusNode(),
                                              validator: (value) {
                                                if (value == null ||
                                                    (!isText(value,
                                                        isRequired: true))) {
                                                  return "Please enter valid text";
                                                }
                                                return null;
                                              },
                                              keyboardType: TextInputType.text,
                                              controller: controller
                                                  .rabbitTypeController,
                                              decoration: InputDecoration(
                                                  hintText:
                                                  "lbl_rabbit_type".tr,
                                                  hintStyle: AppStyle
                                                      .textstylerobotoregular14
                                                      .copyWith(
                                                      fontSize:
                                                      getFontSize(14.0),
                                                      color: ColorConstant
                                                          .black90060),
                                                  enabledBorder: OutlineInputBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              15.00)),
                                                      borderSide: BorderSide(
                                                          color:
                                                          ColorConstant.black9001e,
                                                          width: 1)),
                                                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(15.00)), borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                  disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(15.00)), borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                  isDense: true,
                                                  contentPadding: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(15.00), right: getHorizontalSize(30.00), bottom: getVerticalSize(15.00))),
                                              style: TextStyle(color: ColorConstant.black90060, fontSize: getFontSize(14.0), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(22.00),
                                          top: getVerticalSize(12.00),
                                          right: getHorizontalSize(22.00)),
                                      child: Autocomplete<SelectionPopupModel>(
                                          optionsBuilder: (TextEditingValue
                                          textEditingValue) {
                                            if (textEditingValue.text.isEmpty) {
                                              return const Iterable<
                                                  SelectionPopupModel>.empty();
                                            }
                                            return controller
                                                .autoCompleteItemList
                                                .where((SelectionPopupModel
                                            itemValue) {
                                              return itemValue.title
                                                  .toLowerCase()
                                                  .startsWith(textEditingValue
                                                  .text
                                                  .toLowerCase());
                                            }).toList();
                                          },
                                          fieldViewBuilder: (BuildContext
                                          context,
                                              TextEditingController
                                              fieldTextEditingController,
                                              FocusNode fieldFocusNode,
                                              VoidCallback onFieldSubmitted) {
                                            return Container(
                                                height: getVerticalSize(50.00),
                                                width:
                                                getHorizontalSize(311.00),
                                                child: TextFormField(
                                                    controller:
                                                    fieldTextEditingController,
                                                    focusNode: fieldFocusNode,
                                                    decoration: InputDecoration(
                                                        hintText: "lbl_rabbit_breed"
                                                            .tr,
                                                        hintStyle: TextStyle(
                                                            fontSize: getFontSize(
                                                                14.0),
                                                            color: ColorConstant
                                                                .black90060),
                                                        enabledBorder: OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    15.00)),
                                                            borderSide: BorderSide(
                                                                color: ColorConstant
                                                                    .black9001e,
                                                                width: 1)),
                                                        focusedBorder: OutlineInputBorder(
                                                            borderRadius:
                                                            BorderRadius.circular(getHorizontalSize(15.00)),
                                                            borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                        disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(15.00)), borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                        isDense: true,
                                                        contentPadding: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(15.00), right: getHorizontalSize(30.00), bottom: getVerticalSize(15.00))),
                                                    style: TextStyle(color: ColorConstant.black90060, fontSize: getFontSize(14.0), fontFamily: 'Roboto', fontWeight: FontWeight.w400)));
                                          },
                                          onSelected: (SelectionPopupModel
                                          selection) {},
                                          displayStringForOption:
                                              (SelectionPopupModel option) {
                                            return option.title;
                                          })),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: getVerticalSize(12.00),
                                          bottom: getVerticalSize(20.00)),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .center,
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                              getHorizontalSize(
                                                                  24.00)),
                                                          child: Autocomplete<
                                                              SelectionPopupModel>(
                                                              optionsBuilder:
                                                                  (TextEditingValue
                                                              textEditingValue) {
                                                                if (textEditingValue
                                                                    .text
                                                                    .isEmpty) {
                                                                  return const Iterable<
                                                                      SelectionPopupModel>.empty();
                                                                }
                                                                return controller
                                                                    .autoCompleteItemList1
                                                                    .where((SelectionPopupModel
                                                                itemValue) {
                                                                  return itemValue
                                                                      .title
                                                                      .toLowerCase()
                                                                      .startsWith(textEditingValue
                                                                      .text
                                                                      .toLowerCase());
                                                                }).toList();
                                                              },
                                                              fieldViewBuilder: (BuildContext
                                                              context,
                                                                  TextEditingController
                                                                  fieldTextEditingController,
                                                                  FocusNode
                                                                  fieldFocusNode,
                                                                  VoidCallback
                                                                  onFieldSubmitted) {
                                                                return Container(
                                                                    height:
                                                                    getVerticalSize(
                                                                        50.00),
                                                                    width: getHorizontalSize(
                                                                        99.00),
                                                                    child: TextFormField(
                                                                        controller:
                                                                        fieldTextEditingController,
                                                                        focusNode:
                                                                        fieldFocusNode,
                                                                        decoration: InputDecoration(
                                                                            hintText: "lbl_height"
                                                                                .tr,
                                                                            hintStyle: TextStyle(
                                                                                fontSize: getFontSize(
                                                                                    14.0),
                                                                                color: ColorConstant
                                                                                    .black90060),
                                                                            isDense:
                                                                            true,
                                                                            contentPadding: EdgeInsets.only(
                                                                                left: getHorizontalSize(
                                                                                    10.00),
                                                                                top: getVerticalSize(
                                                                                    15.00),
                                                                                bottom: getVerticalSize(
                                                                                    15.00))),
                                                                        style: TextStyle(
                                                                            color:
                                                                            ColorConstant.black90060,
                                                                            fontSize: getFontSize(14.0),
                                                                            fontFamily: 'Roboto',
                                                                            fontWeight: FontWeight.w400)));
                                                              },
                                                              onSelected:
                                                                  (SelectionPopupModel
                                                              selection) {},
                                                              displayStringForOption:
                                                                  (SelectionPopupModel
                                                              option) {
                                                                return option
                                                                    .title;
                                                              })),
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                              getHorizontalSize(
                                                                  8.00)),
                                                          child: Autocomplete<
                                                              SelectionPopupModel>(
                                                              optionsBuilder:
                                                                  (TextEditingValue
                                                              textEditingValue) {
                                                                if (textEditingValue
                                                                    .text
                                                                    .isEmpty) {
                                                                  return const Iterable<
                                                                      SelectionPopupModel>.empty();
                                                                }
                                                                return controller
                                                                    .autoCompleteItemList2
                                                                    .where((SelectionPopupModel
                                                                itemValue) {
                                                                  return itemValue
                                                                      .title
                                                                      .toLowerCase()
                                                                      .startsWith(textEditingValue
                                                                      .text
                                                                      .toLowerCase());
                                                                }).toList();
                                                              },
                                                              fieldViewBuilder: (BuildContext
                                                              context,
                                                                  TextEditingController
                                                                  fieldTextEditingController,
                                                                  FocusNode
                                                                  fieldFocusNode,
                                                                  VoidCallback
                                                                  onFieldSubmitted) {
                                                                return Container(
                                                                    height:
                                                                    getVerticalSize(
                                                                        50.00),
                                                                    width: getHorizontalSize(
                                                                        98.00),
                                                                    child: TextFormField(
                                                                        controller:
                                                                        fieldTextEditingController,
                                                                        focusNode:
                                                                        fieldFocusNode,
                                                                        decoration: InputDecoration(
                                                                            hintText: "lbl_width"
                                                                                .tr,
                                                                            hintStyle: TextStyle(
                                                                                fontSize: getFontSize(
                                                                                    14.0),
                                                                                color: ColorConstant
                                                                                    .black900Null),
                                                                            isDense:
                                                                            true,
                                                                            contentPadding: EdgeInsets.only(
                                                                                left: getHorizontalSize(
                                                                                    10.00),
                                                                                top: getVerticalSize(
                                                                                    15.00),
                                                                                bottom: getVerticalSize(
                                                                                    15.00))),
                                                                        style: TextStyle(
                                                                            color:
                                                                            ColorConstant.black90060,
                                                                            fontSize: getFontSize(14.0),
                                                                            fontFamily: 'Roboto',
                                                                            fontWeight: FontWeight.w400)));
                                                              },
                                                              onSelected:
                                                                  (SelectionPopupModel
                                                              selection) {},
                                                              displayStringForOption:
                                                                  (SelectionPopupModel
                                                              option) {
                                                                return option
                                                                    .title;
                                                              })),
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                              getHorizontalSize(
                                                                  8.00),
                                                              right:
                                                              getHorizontalSize(
                                                                  24.00)),
                                                          child: Container(
                                                              height: getVerticalSize(
                                                                  50.00),
                                                              width:
                                                              getHorizontalSize(
                                                                  99.00),
                                                              child:
                                                              TextFormField(
                                                                  focusNode:
                                                                  FocusNode(),
                                                                  validator:
                                                                      (value) {
                                                                    if (value ==
                                                                        null ||
                                                                        (!isNumeric(value,
                                                                            isRequired: true))) {
                                                                      return "Please enter valid number";
                                                                    }
                                                                    return null;
                                                                  },
                                                                  keyboardType:
                                                                  TextInputType
                                                                      .number,
                                                                  controller:
                                                                  controller
                                                                      .rabbitWeightController,
                                                                  decoration: InputDecoration(
                                                                      hintText: "lbl_weight"
                                                                          .tr,
                                                                      hintStyle: AppStyle.textstylerobotoregular141.copyWith(
                                                                          fontSize: getFontSize(
                                                                              14.0),
                                                                          color: ColorConstant
                                                                              .black90060),
                                                                      isDense:
                                                                      true,
                                                                      contentPadding: EdgeInsets.only(
                                                                          left: getHorizontalSize(10.00),
                                                                          top: getVerticalSize(15.00),
                                                                          bottom: getVerticalSize(15.00))),
                                                                  style: TextStyle(color: ColorConstant.black90060, fontSize: getFontSize(14.0), fontFamily: 'Roboto', fontWeight: FontWeight.w400))))
                                                    ])),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        10.00),
                                                    top: getVerticalSize(12.00),
                                                    right: getHorizontalSize(
                                                        10.00)),
                                                child: Container(
                                                    height:
                                                    getVerticalSize(50.00),
                                                    width: getHorizontalSize(
                                                        311.00),
                                                    child: TextFormField(
                                                        focusNode: FocusNode(),
                                                        validator: (value) {
                                                          if (value == null ||
                                                              (!isNumeric(value,
                                                                  isRequired:
                                                                  true))) {
                                                            return "Please enter valid number";
                                                          }
                                                          return null;
                                                        },
                                                        keyboardType: TextInputType
                                                            .number,
                                                        controller: controller
                                                            .dOPController,
                                                        decoration: InputDecoration(
                                                            hintText:
                                                            "msg_date_of_acquisa"
                                                                .tr,
                                                            hintStyle: AppStyle
                                                                .textstylerobotoregular14
                                                                .copyWith(
                                                                fontSize: getFontSize(
                                                                    14.0),
                                                                color: ColorConstant
                                                                    .black90060),
                                                            enabledBorder: OutlineInputBorder(
                                                                borderRadius:
                                                                BorderRadius.circular(getHorizontalSize(15.00)),
                                                                borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(15.00)), borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                            disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(15.00)), borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                            isDense: true,
                                                            contentPadding: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(15.00), right: getHorizontalSize(30.00), bottom: getVerticalSize(15.00))),
                                                        style: TextStyle(color: ColorConstant.black90060, fontSize: getFontSize(14.0), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        10.00),
                                                    top: getVerticalSize(12.00),
                                                    right: getHorizontalSize(
                                                        10.00)),
                                                child: Container(
                                                    height:
                                                    getVerticalSize(50.00),
                                                    width: getHorizontalSize(
                                                        311.00),
                                                    child: TextFormField(
                                                        focusNode: FocusNode(),
                                                        validator: (value) {
                                                          if (value == null ||
                                                              (!isText(value,
                                                                  isRequired:
                                                                  true))) {
                                                            return "Please enter valid text";
                                                          }
                                                          return null;
                                                        },
                                                        keyboardType:
                                                        TextInputType.text,
                                                        controller: controller
                                                            .cgaeNumberController,
                                                        decoration: InputDecoration(
                                                            hintText:
                                                            "lbl_cage".tr,
                                                            hintStyle: AppStyle
                                                                .textstylerobotoregular14
                                                                .copyWith(
                                                                fontSize:
                                                                getFontSize(
                                                                    14.0),
                                                                color: ColorConstant
                                                                    .black90060),
                                                            enabledBorder:
                                                            OutlineInputBorder(
                                                                borderRadius:
                                                                BorderRadius.circular(getHorizontalSize(15.00)),
                                                                borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(15.00)), borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                            disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(15.00)), borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                            isDense: true,
                                                            contentPadding: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(15.00), right: getHorizontalSize(30.00), bottom: getVerticalSize(15.00))),
                                                        style: TextStyle(color: ColorConstant.black90060, fontSize: getFontSize(14.0), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        10.00),
                                                    top:
                                                    getVerticalSize(107.59),
                                                    right: getHorizontalSize(
                                                        10.00)),
                                                child: GestureDetector(
                                                    onTap: () {
                                                      onTapBtnSave();
                                                    },
                                                    child: Container(
                                                        alignment:
                                                        Alignment.center,
                                                        height: getVerticalSize(
                                                            40.60),
                                                        width: getHorizontalSize(
                                                            267.48),
                                                        decoration: AppDecoration
                                                            .textstylemontserratromanmedium20,
                                                        child: Text(
                                                            "lbl_save".tr,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .textstylemontserratromanmedium23
                                                                .copyWith(
                                                                fontSize:
                                                                getFontSize(
                                                                    23),
                                                                letterSpacing:
                                                                1.38))))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        10.00),
                                                    top: getVerticalSize(8.64),
                                                    right: getHorizontalSize(
                                                        10.00)),
                                                child: GestureDetector(
                                                    onTap: () {
                                                      onTapBtnDone();
                                                    },
                                                    child: Container(
                                                        alignment:
                                                        Alignment.center,
                                                        height: getVerticalSize(
                                                            40.60),
                                                        width: getHorizontalSize(
                                                            267.48),
                                                        decoration: AppDecoration
                                                            .textstylemontserratromanmedium20,
                                                        child: Text(
                                                            "lbl_done".tr,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .textstylemontserratromanmedium20
                                                                .copyWith(
                                                                fontSize:
                                                                getFontSize(
                                                                    20),
                                                                letterSpacing:
                                                                1.20)))))
                                          ]))
                                ])))))));
  }

  onTapBtnSave() {
    Map<String, dynamic> rabbitProfileModel = {
      'RabbitName': controller.rabbitNameController.text,
      'RabbitType': controller.rabbitTypeController.text,
      'DateofPurchase': controller.dOPController.text,
      'Cage': controller.cgaeNumberController.text,
    };
    controller.addRabbitProfileDocument(rabbitProfileModel);
  }

  onTapBtnDone() {
   Get.toNamed(AppRoutes.homepageScreen);
  }
}
