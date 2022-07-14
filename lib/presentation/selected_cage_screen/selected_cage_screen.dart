import 'controller/selected_cage_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbitapp/core/app_export.dart';
import 'package:grabbitapp/presentation/delete_a_rabbit_bottomsheet/delete_a_rabbit_bottomsheet.dart';
import 'package:grabbitapp/presentation/delete_a_rabbit_bottomsheet/controller/delete_a_rabbit_controller.dart';
import 'package:grabbitapp/presentation/transfer_a_rabbit_bottomsheet/transfer_a_rabbit_bottomsheet.dart';
import 'package:grabbitapp/presentation/transfer_a_rabbit_bottomsheet/controller/transfer_a_rabbit_controller.dart';

class SelectedCageScreen extends GetWidget<SelectedCageController> {
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
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: size.width,
                                      margin: EdgeInsets.only(
                                          top: getVerticalSize(21.00)),
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(5.00),
                                              right: getHorizontalSize(18.00)),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  223.81),
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
                                                                    onTap: () {
                                                                      onTapImgBack();
                                                                    },
                                                                    child: Padding(
                                                                        padding: EdgeInsets.only(
                                                                            top: getVerticalSize(
                                                                                2.00)),
                                                                        child: Image.asset(
                                                                            ImageConstant
                                                                                .imgBack6,
                                                                            height:
                                                                                getVerticalSize(28.00),
                                                                            width: getHorizontalSize(48.00),
                                                                            fit: BoxFit.fill))),
                                                                Text(
                                                                    "lbl_cage_0012"
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
                                                                                getFontSize(20)))
                                                              ])),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  223.81),
                                                          margin: EdgeInsets.only(
                                                              top:
                                                                  getVerticalSize(
                                                                      29.00)),
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
                                                                    onTap: () {
                                                                      onTapImgAddarabbitbu();
                                                                    },
                                                                    child: Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left: getHorizontalSize(
                                                                                13.00)),
                                                                        child: Image.asset(
                                                                            ImageConstant
                                                                                .imgAddarabbitbu,
                                                                            height:
                                                                                getVerticalSize(37.00),
                                                                            width: getHorizontalSize(94.00),
                                                                            fit: BoxFit.fill))),
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      onTapImgDeletearabbit();
                                                                    },
                                                                    child: Padding(
                                                                        padding: EdgeInsets.only(
                                                                            right: getHorizontalSize(
                                                                                1.81)),
                                                                        child: Image.asset(
                                                                            ImageConstant
                                                                                .imgDeletearabbit,
                                                                            height:
                                                                                getVerticalSize(37.00),
                                                                            width: getHorizontalSize(94.00),
                                                                            fit: BoxFit.fill)))
                                                              ]))
                                                    ]),
                                                GestureDetector(
                                                    onTap: () {
                                                      onTapImgTransferarabb();
                                                    },
                                                    child: Padding(
                                                        padding: EdgeInsets.only(
                                                            top:
                                                                getVerticalSize(
                                                                    59.00)),
                                                        child: Image.asset(
                                                            ImageConstant
                                                                .imgTransferarabb,
                                                            height:
                                                                getVerticalSize(
                                                                    37.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    94.00),
                                                            fit: BoxFit.fill)))
                                              ])))),
                              GestureDetector(
                                  onTap: () {
                                    onTapRabbitprofile();
                                  },
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          left: getHorizontalSize(10.00),
                                          top: getVerticalSize(106.00),
                                          right: getHorizontalSize(10.00),
                                          bottom: getVerticalSize(517.00)),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(5.00)),
                                          border: Border.all(
                                              color: ColorConstant.black900Null,
                                              width: getHorizontalSize(1.00))),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        17.00),
                                                    top: getVerticalSize(14.00),
                                                    bottom:
                                                        getVerticalSize(15.76)),
                                                child: Image.asset(
                                                    ImageConstant
                                                        .imgCalifornianrabb,
                                                    height:
                                                        getVerticalSize(30.24),
                                                    width: getHorizontalSize(
                                                        39.53),
                                                    fit: BoxFit.fill)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        10.47),
                                                    top: getVerticalSize(19.00),
                                                    right: getHorizontalSize(
                                                        176.00),
                                                    bottom:
                                                        getVerticalSize(18.00)),
                                                child: Text(
                                                    "lbl_rabbit_1001".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .textstylepoppinsregular15
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(
                                                                    15))))
                                          ])))
                            ]))))));
  }

  onTapImgBack() {
    Get.toNamed(AppRoutes.checkCagesScreen);
  }

  onTapImgAddarabbitbu() {
    Get.toNamed(AppRoutes.scanScreen);
  }

  onTapImgDeletearabbit() {
    Get.bottomSheet(
      DeleteARabbitBottomsheet(
        Get.put(
          DeleteARabbitController(),
        ),
      ),
      isScrollControlled: true,
    );
  }

  onTapImgTransferarabb() {
    Get.bottomSheet(
      TransferARabbitBottomsheet(
        Get.put(
          TransferARabbitController(),
        ),
      ),
      isScrollControlled: true,
    );
  }

  onTapRabbitprofile() {
    Get.toNamed(AppRoutes.selectedRabbitScreen);
  }
}
