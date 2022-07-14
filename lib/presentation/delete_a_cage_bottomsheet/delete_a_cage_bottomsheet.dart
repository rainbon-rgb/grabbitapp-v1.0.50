import 'controller/delete_a_cage_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grabbitapp/core/app_export.dart';

// ignore_for_file: must_be_immutable
class DeleteACageBottomsheet extends StatelessWidget {
  DeleteACageBottomsheet(this.controller);

  DeleteACageController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(getHorizontalSize(10.00)),
                          topRight: Radius.circular(getHorizontalSize(10.00)),
                          bottomLeft: Radius.circular(getHorizontalSize(0.00)),
                          bottomRight:
                              Radius.circular(getHorizontalSize(0.00)))),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(
                                    top: getVerticalSize(16.19)),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                                  left:
                                                      getHorizontalSize(15.00)),
                                              child: Image.asset(
                                                  ImageConstant.imgBack,
                                                  height:
                                                      getVerticalSize(28.00),
                                                  width:
                                                      getHorizontalSize(48.00),
                                                  fit: BoxFit.fill))),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(36.00),
                                              right: getHorizontalSize(99.00),
                                              bottom: getVerticalSize(2.00)),
                                          child: Text("lbl_delete_a_cage".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: AppStyle
                                                  .textstylepoppinssemibold20
                                                  .copyWith(
                                                      fontSize:
                                                          getFontSize(20))))
                                    ]))),
                        Container(
                            height: getVerticalSize(1.00),
                            width: getHorizontalSize(329.28),
                            margin: EdgeInsets.only(
                                left: getHorizontalSize(10.00),
                                top: getVerticalSize(23.79),
                                right: getHorizontalSize(10.00)),
                            decoration:
                                BoxDecoration(color: ColorConstant.black9001e)),
                        Obx(() => Container(
                            height: getVerticalSize(41.78),
                            width: getHorizontalSize(274.54),
                            margin: EdgeInsets.only(
                                left: getHorizontalSize(10.00),
                                top: getVerticalSize(23.63),
                                right: getHorizontalSize(10.00)),
                            decoration: BoxDecoration(
                                color: ColorConstant.gray200,
                                borderRadius: BorderRadius.circular(
                                    getHorizontalSize(20.89)),
                                border: Border.all(
                                    color: ColorConstant.black900Null,
                                    width: getHorizontalSize(1.00))),
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: getHorizontalSize(10.76),
                                    top: getVerticalSize(12.58),
                                    bottom: getVerticalSize(10.20)),
                                child: DropdownButtonHideUnderline(
                                    child: DropdownButtonFormField<
                                            SelectionPopupModel>(
                                        focusNode: FocusNode(),
                                        icon: Container(
                                            height: getSize(3.15),
                                            width: getSize(8.25),
                                            child: SvgPicture.asset(ImageConstant.imgChevron,
                                                fit: BoxFit.fill)),
                                        style: TextStyle(
                                            color: ColorConstant.gray700,
                                            fontSize: getFontSize(15),
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w400),
                                        value: controller.selectedDropDownValue,
                                        onChanged: (value) {
                                          controller.onSelected(value);
                                        },
                                        items: controller.dropdownItemList.map(
                                            (SelectionPopupModel itemCount) {
                                          return DropdownMenuItem<
                                                  SelectionPopupModel>(
                                              value: itemCount,
                                              child: Text(itemCount.title,
                                                  textAlign: TextAlign.left));
                                        }).toList(),
                                        decoration: InputDecoration(
                                            hintText: "msg_select_a_cage_t".tr,
                                            hintStyle: TextStyle(
                                                fontSize: getFontSize(15.0),
                                                color: ColorConstant.gray700),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(getHorizontalSize(20.89)),
                                                borderSide: BorderSide(color: ColorConstant.black900Null, width: 1)),
                                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(20.89)), borderSide: BorderSide(color: ColorConstant.black900Null, width: 1)),
                                            disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(20.89)), borderSide: BorderSide(color: ColorConstant.black900Null, width: 1)),
                                            filled: true,
                                            fillColor: ColorConstant.gray200,
                                            isDense: true,
                                            contentPadding: EdgeInsets.all(0))))))),
                        Padding(
                            padding: EdgeInsets.only(
                                left: getHorizontalSize(10.00),
                                top: getVerticalSize(129.80),
                                right: getHorizontalSize(10.00)),
                            child: Container(
                                alignment: Alignment.center,
                                height: getVerticalSize(33.70),
                                width: getHorizontalSize(163.92),
                                decoration: AppDecoration
                                    .textstylemontserratromanmedium15,
                                child: Text("lbl_delete".tr,
                                    textAlign: TextAlign.center,
                                    style: AppStyle
                                        .textstylemontserratromanmedium15
                                        .copyWith(
                                            fontSize: getFontSize(15),
                                            letterSpacing: 0.90)))),
                        Padding(
                            padding: EdgeInsets.only(
                                left: getHorizontalSize(10.00),
                                top: getVerticalSize(20.30),
                                right: getHorizontalSize(10.00),
                                bottom: getVerticalSize(20.00)),
                            child: GestureDetector(
                                onTap: () {
                                  onTapBtnNext();
                                },
                                child: Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(33.70),
                                    width: getHorizontalSize(163.92),
                                    decoration: AppDecoration
                                        .textstylemontserratromanmedium151,
                                    child: Text("lbl_next".tr,
                                        textAlign: TextAlign.center,
                                        style: AppStyle
                                            .textstylemontserratromanmedium151
                                            .copyWith(
                                                fontSize: getFontSize(15),
                                                letterSpacing: 0.90)))))
                      ])))
        ]));
  }

  onTapImgBack() {
    Get.toNamed(AppRoutes.checkCagesScreen);
  }

  onTapBtnNext() {
    Get.toNamed(AppRoutes.checkCagesScreen);
  }
}
