import 'controller/rabbit_details_for_meat_selling_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbitapp/core/app_export.dart';

class RabbitDetailsForMeatSellingScreen
    extends GetWidget<RabbitDetailsForMeatSellingController> {
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
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      top: getVerticalSize(19.00),
                                      right: getHorizontalSize(10.00),
                                      bottom: getVerticalSize(19.00)),
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
                                                                76.00)),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
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
                                                                      top: getVerticalSize(
                                                                          1.00)),
                                                                  child: Image.asset(
                                                                      ImageConstant
                                                                          .imgBack5,
                                                                      height: getVerticalSize(
                                                                          28.00),
                                                                      width: getHorizontalSize(
                                                                          48.00),
                                                                      fit: BoxFit
                                                                          .fill))),
                                                          Padding(
                                                              padding: EdgeInsets.only(
                                                                  left: getHorizontalSize(
                                                                      51.00)),
                                                              child: Text(
                                                                  "lbl_details"
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
                                                                              getFontSize(20))))
                                                        ])))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                height: getVerticalSize(133.00),
                                                width:
                                                    getHorizontalSize(146.00),
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        25.00),
                                                    top: getVerticalSize(37.00),
                                                    right: getHorizontalSize(
                                                        166.00)),
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      133.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      146.00),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .gray200,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(73.00)),
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
                                                                        offset: Offset(
                                                                            6,
                                                                            5))
                                                                  ]))),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  left: getHorizontalSize(
                                                                      14.51),
                                                                  top: getVerticalSize(
                                                                      29.56),
                                                                  right: getHorizontalSize(
                                                                      15.42),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          29.55)),
                                                              child: Image.asset(
                                                                  ImageConstant
                                                                      .imgCalifornianrab1,
                                                                  height:
                                                                      getVerticalSize(
                                                                          73.89),
                                                                  width: getHorizontalSize(
                                                                      116.07),
                                                                  fit: BoxFit
                                                                      .fill)))
                                                    ]))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(10.00),
                                                top: getVerticalSize(43.00)),
                                            child: Container(
                                                height: getVerticalSize(50.00),
                                                width:
                                                    getHorizontalSize(311.00),
                                                child: TextFormField(
                                                    focusNode: FocusNode(),
                                                    controller: controller
                                                        .rabbitNameController,
                                                    decoration: InputDecoration(
                                                        hintText: "lbl_rabbit_name"
                                                            .tr,
                                                        hintStyle: AppStyle
                                                            .textstylerobotoregular14
                                                            .copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        14.0),
                                                                color: ColorConstant
                                                                    .black90060),
                                                        enabledBorder: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius.circular(getHorizontalSize(15.00)),
                                                            borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(15.00)), borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                        disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(15.00)), borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                        filled: true,
                                                        fillColor: ColorConstant.amberA100,
                                                        isDense: true,
                                                        contentPadding: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(15.00), right: getHorizontalSize(30.00), bottom: getVerticalSize(15.00))),
                                                    style: TextStyle(color: ColorConstant.black90060, fontSize: getFontSize(14.0), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(10.00),
                                                top: getVerticalSize(12.00)),
                                            child: Container(
                                                height: getVerticalSize(50.00),
                                                width:
                                                    getHorizontalSize(311.00),
                                                child: TextFormField(
                                                    focusNode: FocusNode(),
                                                    controller: controller
                                                        .rabbitTypeController,
                                                    decoration: InputDecoration(
                                                        hintText: "lbl_rabbit_type"
                                                            .tr,
                                                        hintStyle: AppStyle
                                                            .textstylerobotoregular14
                                                            .copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        14.0),
                                                                color: ColorConstant
                                                                    .black90060),
                                                        enabledBorder: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius.circular(getHorizontalSize(15.00)),
                                                            borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(15.00)), borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                        disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(15.00)), borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                        filled: true,
                                                        fillColor: ColorConstant.amberA100,
                                                        isDense: true,
                                                        contentPadding: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(15.00), right: getHorizontalSize(30.00), bottom: getVerticalSize(15.00))),
                                                    style: TextStyle(color: ColorConstant.black90060, fontSize: getFontSize(14.0), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(10.00),
                                                top: getVerticalSize(12.00)),
                                            child: Container(
                                                height: getVerticalSize(50.00),
                                                width:
                                                    getHorizontalSize(311.00),
                                                child: TextFormField(
                                                    focusNode: FocusNode(),
                                                    controller: controller
                                                        .rabbitBreedController,
                                                    decoration: InputDecoration(
                                                        hintText: "lbl_rabbit_breed"
                                                            .tr,
                                                        hintStyle: AppStyle
                                                            .textstylerobotoregular14
                                                            .copyWith(
                                                                fontSize:
                                                                    getFontSize(
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
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    top:
                                                        getVerticalSize(12.00)),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  99.00),
                                                          margin: EdgeInsets.only(
                                                              left: getHorizontalSize(
                                                                  25.00)),
                                                          padding: EdgeInsets.only(
                                                              left: getHorizontalSize(
                                                                  10.00),
                                                              top: getVerticalSize(
                                                                  15.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      15.00)),
                                                          decoration: AppDecoration
                                                              .textstylerobotoregular141,
                                                          child: Text(
                                                              "lbl_height".tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .textstylerobotoregular141
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(14),
                                                                      letterSpacing: 0.25,
                                                                      height: 1.43))),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  98.00),
                                                          margin: EdgeInsets.only(
                                                              left: getHorizontalSize(
                                                                  8.00)),
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      10.00),
                                                              top: getVerticalSize(
                                                                  15.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      15.00)),
                                                          decoration: AppDecoration
                                                              .textstylerobotoregular141,
                                                          child: Text(
                                                              "lbl_width".tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .textstylerobotoregular141
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(14),
                                                                      letterSpacing: 0.25,
                                                                      height: 1.43))),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  99.00),
                                                          margin: EdgeInsets.only(
                                                              left: getHorizontalSize(
                                                                  8.00)),
                                                          padding: EdgeInsets.only(
                                                              left: getHorizontalSize(
                                                                  10.00),
                                                              top: getVerticalSize(
                                                                  15.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      15.00)),
                                                          decoration: AppDecoration
                                                              .textstylerobotoregular141,
                                                          child: Text(
                                                              "lbl_weight".tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .textstylerobotoregular141
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(14),
                                                                      letterSpacing: 0.25,
                                                                      height: 1.43)))
                                                    ]))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(10.00),
                                                top: getVerticalSize(12.00)),
                                            child: Container(
                                                height: getVerticalSize(50.00),
                                                width:
                                                    getHorizontalSize(311.00),
                                                child: TextFormField(
                                                    focusNode: FocusNode(),
                                                    controller: controller
                                                        .dOAPController,
                                                    decoration: InputDecoration(
                                                        hintText: "msg_date_of_acquisa"
                                                            .tr,
                                                        hintStyle: AppStyle
                                                            .textstylerobotoregular14
                                                            .copyWith(
                                                                fontSize:
                                                                    getFontSize(
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
                                                left: getHorizontalSize(10.00),
                                                top: getVerticalSize(12.00)),
                                            child: Container(
                                                height: getVerticalSize(50.00),
                                                width:
                                                    getHorizontalSize(311.00),
                                                child: TextFormField(
                                                    focusNode: FocusNode(),
                                                    controller: controller
                                                        .cageController,
                                                    decoration: InputDecoration(
                                                        hintText: "lbl_cage".tr,
                                                        hintStyle: AppStyle
                                                            .textstylerobotoregular14
                                                            .copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        14.0),
                                                                color: ColorConstant
                                                                    .black90060),
                                                        enabledBorder: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(15.00)),
                                                            borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(15.00)), borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                        disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(15.00)), borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                        isDense: true,
                                                        contentPadding: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(15.00), right: getHorizontalSize(30.00), bottom: getVerticalSize(15.00))),
                                                    style: TextStyle(color: ColorConstant.black90060, fontSize: getFontSize(14.0), fontFamily: 'Roboto', fontWeight: FontWeight.w400))))
                                      ])))
                        ]))))));
  }

  onTapImgBack() {
    Get.toNamed(AppRoutes.sellARabbitScreen);
  }
}
