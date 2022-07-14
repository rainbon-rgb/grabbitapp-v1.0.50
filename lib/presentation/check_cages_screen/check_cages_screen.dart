import 'package:grabbitapp/presentation/delete_a_cage_bottomsheet/controller/delete_a_cage_controller.dart';
import 'package:grabbitapp/presentation/delete_a_cage_bottomsheet/delete_a_cage_bottomsheet.dart';

import 'controller/check_cages_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbitapp/core/app_export.dart';

class CheckCagesScreen extends GetWidget<CheckCagesController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        width: size.width,
                        decoration:
                            BoxDecoration(color: ColorConstant.whiteA700),
                        child: Stack(children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(5.00),
                                      top: getVerticalSize(22.00),
                                      right: getHorizontalSize(10.00),
                                      bottom: getVerticalSize(20.00)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            width: size.width,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    right: getHorizontalSize(
                                                        92.40)),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapImgBack();
                                                          },
                                                          child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  top:
                                                                      getVerticalSize(
                                                                          1.00),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          1.00)),
                                                              child: Image.asset(
                                                                  ImageConstant
                                                                      .imgBack4,
                                                                  height:
                                                                      getVerticalSize(
                                                                          28.00),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          48.00),
                                                                  fit: BoxFit
                                                                      .fill))),
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      56.40)),
                                                          child: Text(
                                                              "lbl_check_cages"
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
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20))))
                                                    ]))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: getVerticalSize(26.00)),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapImgAddcagebutton();
                                                      },
                                                      child: Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      13.00)),
                                                          child: Image.asset(
                                                              ImageConstant
                                                                  .imgAddcagebutton,
                                                              height:
                                                                  getVerticalSize(
                                                                      52.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      143.00),
                                                              fit: BoxFit
                                                                  .fill))),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapImgDelatecagebut();
                                                      },
                                                      child: Padding(
                                                          padding: EdgeInsets.only(
                                                              top:
                                                                  getVerticalSize(
                                                                      1.00)),
                                                          child: Image.asset(
                                                              ImageConstant
                                                                  .imgDelatecagebut,
                                                              height:
                                                                  getVerticalSize(
                                                                      51.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      146.00),
                                                              fit:
                                                                  BoxFit.fill)))
                                                ])),
                                        GestureDetector(
                                            onTap: () {
                                              onTapCageoo1();
                                            },
                                            child: Container(
                                                width:
                                                    getHorizontalSize(145.51),
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        11.00),
                                                    top: getVerticalSize(76.00),
                                                    right: getHorizontalSize(
                                                        11.00)),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.amber400,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                5.00))),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      10.00),
                                                              top:
                                                                  getVerticalSize(
                                                                      13.82),
                                                              right:
                                                                  getHorizontalSize(
                                                                      10.00)),
                                                          child: Image.asset(
                                                              ImageConstant
                                                                  .imgLockeddoor,
                                                              height:
                                                                  getVerticalSize(
                                                                      86.39),
                                                              width:
                                                                  getHorizontalSize(
                                                                      84.11),
                                                              fit:
                                                                  BoxFit.fill)),
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      10.00),
                                                              top: getVerticalSize(
                                                                  11.36),
                                                              right:
                                                                  getHorizontalSize(
                                                                      10.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      4.34)),
                                                          child: Text(
                                                              "lbl_cage_001".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .textstyleabelregular15
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(
                                                                              15))))
                                                    ])))
                                      ])))
                        ]))))));
  }

  onTapImgBack() {
   Get.toNamed(AppRoutes.homepageScreen);
  }
  onTapImgAddcagebutton() {
   Get.toNamed(AppRoutes.addACageScreen);
  }
 
 onTapImgDelatecagebut() {
    Get.bottomSheet(
      DeleteACageBottomsheet(
        Get.put(
          DeleteACageController(),
        ),
      ),
      isScrollControlled: true,
    );
  }
  onTapCageoo1() {
   Get.toNamed(AppRoutes.selectedCageScreen);
  }
}
