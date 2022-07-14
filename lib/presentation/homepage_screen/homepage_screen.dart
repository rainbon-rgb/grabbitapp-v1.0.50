import 'controller/homepage_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbitapp/core/app_export.dart';

class HomepageScreen extends GetWidget<HomepageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                decoration: BoxDecoration(color: ColorConstant.whiteA700),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: SingleChildScrollView(
                                  padding: EdgeInsets.only(
                                      top: getVerticalSize(10.00),
                                      bottom: getVerticalSize(20.00)),
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(24.00),
                                          right: getHorizontalSize(27.00)),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        10.00),
                                                    right: getHorizontalSize(
                                                        10.00)),
                                                child: Image.asset(
                                                    ImageConstant
                                                        .imgGrabbitlogo,
                                                    height:
                                                        getVerticalSize(68.00),
                                                    width: getHorizontalSize(
                                                        170.00),
                                                    fit: BoxFit.fill)),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                            91.00)),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          onTapImgAddrabbitbutt();
                                                                        },
                                                                        child: Padding(
                                                                            padding:
                                                                                EdgeInsets.only(top: getVerticalSize(2.00)),
                                                                            child: Image.asset(ImageConstant.imgAddrabbitbutt, height: getVerticalSize(139.00), width: getHorizontalSize(143.00), fit: BoxFit.fill))),
                                                                    GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          onTapImgScanarabbitb();
                                                                        },
                                                                        child: Image.asset(
                                                                            ImageConstant
                                                                                .imgScanarabbitb,
                                                                            height:
                                                                                getVerticalSize(141.00),
                                                                            width: getHorizontalSize(147.00),
                                                                            fit: BoxFit.fill))
                                                                  ])),
                                                          Padding(
                                                              padding: EdgeInsets.only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                          10.00),
                                                                  top: getVerticalSize(
                                                                      221.59),
                                                                  right:
                                                                      getHorizontalSize(
                                                                          9.20)),
                                                              child:
                                                                  GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        onTapBtnCheckcages();
                                                                      },
                                                                      child: Container(
                                                                          alignment: Alignment
                                                                              .center,
                                                                          height: getVerticalSize(
                                                                              53.16),
                                                                          width: getHorizontalSize(
                                                                              302.80),
                                                                          decoration: AppDecoration
                                                                              .textstylerobotoromanmedium18,
                                                                          child: Text(
                                                                              "lbl_check_cages".tr,
                                                                              textAlign: TextAlign.center,
                                                                              style: AppStyle.textstylerobotoromanmedium18.copyWith(fontSize: getFontSize(18), letterSpacing: 1.08))))),
                                                          Padding(
                                                              padding: EdgeInsets.only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                          10.00),
                                                                  top: getVerticalSize(
                                                                      20.91),
                                                                  right:
                                                                      getHorizontalSize(
                                                                          9.20),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          0.00)),
                                                              child:
                                                                  GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        onTapBtnSellarabbit2();
                                                                      },
                                                                      child: Container(
                                                                          alignment: Alignment
                                                                              .center,
                                                                          height: getVerticalSize(
                                                                              53.16),
                                                                          width: getHorizontalSize(
                                                                              302.80),
                                                                          decoration: AppDecoration
                                                                              .textstylerobotoromanmedium181,
                                                                          child: Text(
                                                                              "lbl_sell_a_rabbit2".tr,
                                                                              textAlign: TextAlign.center,
                                                                              style: AppStyle.textstylerobotoromanmedium181.copyWith(fontSize: getFontSize(18), letterSpacing: 1.08)))))
                                                        ])))
                                          ])))))
                    ]))));
  }


  onTapImgAddrabbitbutt() {
    Get.toNamed(AppRoutes.scanScreen);
  }

  onTapImgScanarabbitb() {
    Get.toNamed(AppRoutes.qucikscanScreen);
  }

  onTapBtnCheckcages() {
    Get.toNamed(AppRoutes.checkCagesScreen);
  }

  onTapBtnSellarabbit2() {
    Get.toNamed(AppRoutes.sellARabbitScreen);
  }
}
