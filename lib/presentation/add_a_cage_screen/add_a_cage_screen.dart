import 'controller/add_a_cage_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbitapp/core/app_export.dart';
import 'package:grabbitapp/core/utils/validation_functions.dart';

// ignore_for_file: must_be_immutable
class AddACageScreen extends GetWidget<AddACageController> {
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
                            height: size.height,
                            width: size.width,
                            decoration:
                                BoxDecoration(color: ColorConstant.whiteA700),
                            child: Stack(children: [
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(5.00),
                                          top: getVerticalSize(23.00),
                                          right: getHorizontalSize(10.00),
                                          bottom: getVerticalSize(20.00)),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    width: size.width,
                                                    child: Padding(
                                                        padding: EdgeInsets.only(
                                                            right:
                                                                getHorizontalSize(
                                                                    102.19)),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              GestureDetector(
                                                                  onTap: () {
                                                                    onTapImgBack();
                                                                  },
                                                                  child: Padding(
                                                                      padding: EdgeInsets.only(
                                                                          bottom: getVerticalSize(
                                                                              8.00)),
                                                                      child: Image.asset(
                                                                          ImageConstant
                                                                              .imgBack7,
                                                                          height: getVerticalSize(
                                                                              28.00),
                                                                          width: getHorizontalSize(
                                                                              48.00),
                                                                          fit: BoxFit
                                                                              .fill))),
                                                              Padding(
                                                                  padding: EdgeInsets.only(
                                                                      top: getVerticalSize(
                                                                          6.00)),
                                                                  child: Text(
                                                                      "lbl_add_cage"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: AppStyle
                                                                          .textstylepoppinssemibold20
                                                                          .copyWith(
                                                                              fontSize: getFontSize(20))))
                                                            ])))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                            24.00),
                                                        right:
                                                            getHorizontalSize(
                                                                205.00)),
                                                    child: Image.asset(
                                                        ImageConstant
                                                            .imgCageicon,
                                                        height: getVerticalSize(
                                                            112.00),
                                                        width:
                                                            getHorizontalSize(
                                                                126.00),
                                                        fit: BoxFit.fill))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        19.00),
                                                    top: getVerticalSize(25.00),
                                                    right: getHorizontalSize(
                                                        1.00)),
                                                child: Container(
                                                    height:
                                                        getVerticalSize(52.00),
                                                    width: getHorizontalSize(
                                                        311.00),
                                                    child: TextFormField(
                                                        focusNode: FocusNode(),
                                                        controller: controller
                                                            .cageNameController,
                                                        decoration: InputDecoration(
                                                            hintText:
                                                                "lbl_cage_name"
                                                                    .tr,
                                                            hintStyle: AppStyle
                                                                .textstylepoppinsregular15
                                                                .copyWith(
                                                                    fontSize: getFontSize(
                                                                        15.0),
                                                                    color: ColorConstant
                                                                        .black900A2),
                                                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(20.00)), borderSide: BorderSide(color: ColorConstant.black900Null, width: 1)),
                                                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(20.00)), borderSide: BorderSide(color: ColorConstant.black900Null, width: 1)),
                                                            disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(20.00)), borderSide: BorderSide(color: ColorConstant.black900Null, width: 1)),
                                                            filled: true,
                                                            fillColor: ColorConstant.amberA100,
                                                            isDense: true,
                                                            contentPadding: EdgeInsets.only(left: getHorizontalSize(16.00), top: getVerticalSize(17.33), right: getHorizontalSize(30.00), bottom: getVerticalSize(11.67))),
                                                        style: TextStyle(color: ColorConstant.black900A2, fontSize: getFontSize(15.0), fontFamily: 'Poppins', fontWeight: FontWeight.w400)))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        10.00),
                                                    top:
                                                        getVerticalSize(25.00)),
                                                child: Container(
                                                    height:
                                                        getVerticalSize(52.00),
                                                    width: getHorizontalSize(
                                                        311.00),
                                                    child: TextFormField(
                                                        focusNode: FocusNode(),
                                                        validator: (value) {
                                                          if (!isText(value)) {
                                                            return "Please enter valid text";
                                                          }
                                                          return null;
                                                        },
                                                        keyboardType:
                                                            TextInputType.text,
                                                        controller: controller
                                                            .cageDescController,
                                                        decoration: InputDecoration(
                                                            hintText:
                                                                "lbl_description"
                                                                    .tr,
                                                            hintStyle: AppStyle
                                                                .textstylepoppinsregular15
                                                                .copyWith(
                                                                    fontSize: getFontSize(
                                                                        15.0),
                                                                    color: ColorConstant
                                                                        .black900A2),
                                                            enabledBorder: OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius.circular(getHorizontalSize(20.00)),
                                                                borderSide: BorderSide(color: ColorConstant.black900Null, width: 1)),
                                                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(20.00)), borderSide: BorderSide(color: ColorConstant.black900Null, width: 1)),
                                                            disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(20.00)), borderSide: BorderSide(color: ColorConstant.black900Null, width: 1)),
                                                            filled: true,
                                                            fillColor: ColorConstant.amberA100,
                                                            isDense: true,
                                                            contentPadding: EdgeInsets.only(left: getHorizontalSize(16.00), top: getVerticalSize(17.33), right: getHorizontalSize(30.00), bottom: getVerticalSize(11.67))),
                                                        style: TextStyle(color: ColorConstant.black900A2, fontSize: getFontSize(15.0), fontFamily: 'Poppins', fontWeight: FontWeight.w400)))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        22.26),
                                                    top:
                                                        getVerticalSize(300.68),
                                                    right: getHorizontalSize(
                                                        22.26),
                                                    bottom:
                                                        getVerticalSize(0.00)),
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
                                                        decoration: BoxDecoration(
                                                            color: ColorConstant
                                                                .amber400,
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        20.30)),
                                                            boxShadow: [
                                                              BoxShadow(
                                                                  color: ColorConstant
                                                                      .black9003f,
                                                                  spreadRadius:
                                                                      getHorizontalSize(
                                                                          2.00),
                                                                  blurRadius:
                                                                      getHorizontalSize(
                                                                          2.00),
                                                                  offset:
                                                                      Offset(
                                                                          6, 6))
                                                            ]),
                                                        child: Text(
                                                            "lbl_save".tr,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .textstylemontserratromanmedium201
                                                                .copyWith(
                                                                    fontSize:
                                                                        getFontSize(20),
                                                                    letterSpacing: 1.20)))))
                                          ])))
                            ])))))));
  }

  onTapImgBack() {
    Get.toNamed(AppRoutes.checkCagesScreen);
  }

  onTapBtnSave() {
    Map<String, dynamic> cageModel = {
      'CageName': controller.cageNameController.text,
      'Description': '' //TODO:Add documentId,
    };
    controller.addCageDocument(cageModel);
  }
}
