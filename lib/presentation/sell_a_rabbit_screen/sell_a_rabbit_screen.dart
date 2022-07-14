import 'controller/sell_a_rabbit_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbitapp/core/app_export.dart';

class SellARabbitScreen extends GetWidget<SellARabbitController> {
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
                                          top: getVerticalSize(27.00)),
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(7.00),
                                              right: getHorizontalSize(99.00)),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                GestureDetector(
                                                    onTap: () {
                                                      onTapImgBack();
                                                    },
                                                    child: Padding(
                                                        padding: EdgeInsets.only(
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
                                                            fit: BoxFit.fill))),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            44.00)),
                                                    child: Text(
                                                        "lbl_sell_a_rabbit".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: AppStyle
                                                            .textstylepoppinssemibold20
                                                            .copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        20))))
                                              ])))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(39.00),
                                      right: getHorizontalSize(10.00)),
                                  child: Text("msg_recommended_rab".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.textstylepoppinsregular19
                                          .copyWith(
                                              fontSize: getFontSize(19)))),
                              GestureDetector(
                                  onTap: () {
                                    onTapRabbitcontaine();
                                  },
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          left: getHorizontalSize(10.00),
                                          top: getVerticalSize(28.35),
                                          right: getHorizontalSize(10.00),
                                          bottom: getVerticalSize(588.52)),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.whiteA7007c,
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(30.24)),
                                          border: Border.all(
                                              color: ColorConstant.black900Null,
                                              width: getHorizontalSize(1.00)),
                                          boxShadow: [
                                            BoxShadow(
                                                color: ColorConstant.black9003f,
                                                spreadRadius:
                                                    getHorizontalSize(2.00),
                                                blurRadius:
                                                    getHorizontalSize(2.00),
                                                offset: Offset(3, 4))
                                          ]),
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
                                                        16.82),
                                                    top: getVerticalSize(14.69),
                                                    bottom:
                                                        getVerticalSize(15.55)),
                                                child: Image.asset(
                                                    ImageConstant
                                                        .imgCalifornianrab,
                                                    height:
                                                        getVerticalSize(30.24),
                                                    width: getHorizontalSize(
                                                        39.53),
                                                    fit: BoxFit.fill)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        21.51),
                                                    top: getVerticalSize(15.12),
                                                    right: getHorizontalSize(
                                                        165.81),
                                                    bottom:
                                                        getVerticalSize(15.36)),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("lbl_rabbit_1001".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .textstylepoppinsregular15
                                                              .copyWith(
                                                                  fontSize:
                                                                      getFontSize(
                                                                          15))),
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              right:
                                                                  getHorizontalSize(
                                                                      10.00)),
                                                          child: Text(
                                                              "lbl_view_details"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .textstylepoppinsregular8
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(
                                                                              8),
                                                                      decoration:
                                                                          TextDecoration
                                                                              .underline)))
                                                    ]))
                                          ])))
                            ]))))));
  }

  onTapImgBack() {
    Get.toNamed(AppRoutes.homepageScreen);
  }

  onTapRabbitcontaine() {
    Get.toNamed(AppRoutes.rabbitDetailsForMeatSellingScreen);
  }
}
