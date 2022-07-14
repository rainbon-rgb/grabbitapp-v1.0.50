import 'controller/rabbit_generated_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbitapp/core/app_export.dart';

class RabbitGeneratedInfoScreen
    extends GetWidget<RabbitGeneratedInfoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        decoration:
                        BoxDecoration(color: ColorConstant.whiteA700),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(414.00),
                                  width: getHorizontalSize(321.00),
                                  margin: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(47.00),
                                      right: getHorizontalSize(10.00)),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: getVerticalSize(414.00),
                                                width:
                                                getHorizontalSize(320.00),
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        1.00)),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .bluegray100,
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            15.00))))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    top: getVerticalSize(71.00),
                                                    right:
                                                    getHorizontalSize(1.00),
                                                    bottom:
                                                    getVerticalSize(71.00)),
                                                child: Image.asset(
                                                    ImageConstant
                                                        .imgRabbitdflt1,
                                                    height:
                                                    getVerticalSize(236.00),
                                                    width: getHorizontalSize(
                                                        320.00),
                                                    fit: BoxFit.fill)))
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(243.10),
                                      right: getHorizontalSize(10.00),
                                      bottom: getVerticalSize(20.00)),
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapBtnDone();
                                      },
                                      child: Container(
                                          alignment: Alignment.center,
                                          height: getVerticalSize(40.60),
                                          width: getHorizontalSize(267.48),
                                          decoration: BoxDecoration(
                                              color: ColorConstant.amber400,
                                              borderRadius:
                                              BorderRadius.circular(
                                                  getHorizontalSize(20.30)),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: ColorConstant
                                                        .black9003f,
                                                    spreadRadius:
                                                    getHorizontalSize(2.00),
                                                    blurRadius:
                                                    getHorizontalSize(2.00),
                                                    offset: Offset(6, 6))
                                              ]),
                                          child: Text("lbl_done".tr,
                                              textAlign: TextAlign.center,
                                              style: AppStyle
                                                  .textstylemontserratromanmedium201
                                                  .copyWith(
                                                  fontSize: getFontSize(20),
                                                  letterSpacing: 1.20)))))
                            ]))))));
  }

  onTapBtnDone() {
    Get.toNamed(AppRoutes.editDetailsScreen);
  }
}
