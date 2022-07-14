import 'controller/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbitapp/core/app_export.dart';

class WelcomeScreen extends GetWidget<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray300,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        width: size.width,
                        decoration: BoxDecoration(
                            color: ColorConstant.gray300,
                            boxShadow: [
                              BoxShadow(
                                  color: ColorConstant.black9003f,
                                  spreadRadius: getHorizontalSize(2.00),
                                  blurRadius: getHorizontalSize(2.00),
                                  offset: Offset(0, 4))
                            ]),
                        child: Stack(alignment: Alignment.topLeft, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      right: getHorizontalSize(5.00),
                                      bottom: getVerticalSize(6.00)),
                                  child: Image.asset(
                                      ImageConstant.imgRectangle20,
                                      height: getVerticalSize(794.00),
                                      width: getHorizontalSize(355.00),
                                      fit: BoxFit.fill))),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      top: getVerticalSize(2.00),
                                      right: getHorizontalSize(10.00),
                                      bottom: getVerticalSize(10.00)),
                                  child: Image.asset(
                                      ImageConstant.imgRectangle6,
                                      height: getVerticalSize(607.81),
                                      width: getHorizontalSize(310.97),
                                      fit: BoxFit.fill))),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(10.00)),
                                  child: Image.asset(
                                      ImageConstant.imgRectangle3,
                                      height: getVerticalSize(571.00),
                                      width: getHorizontalSize(301.00),
                                      fit: BoxFit.fill))),
                          Align(
                              alignment: Alignment.topCenter,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapImgGrabbitlogo();
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(26.00),
                                          top: getVerticalSize(306.00),
                                          right: getHorizontalSize(26.00),
                                          bottom: getVerticalSize(306.00)),
                                      child: Image.asset(
                                          ImageConstant.imgGrabbitlogo1,
                                          height: getVerticalSize(138.00),
                                          width: getHorizontalSize(303.00),
                                          fit: BoxFit.fill))))
                        ]))))));
  }

  onTapImgGrabbitlogo() {
    Get.toNamed(AppRoutes.homepageScreen);
  }
}
