import 'controller/selected_rabbit_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbitapp/core/app_export.dart';

class SelectedRabbitScreen extends GetWidget<SelectedRabbitController> {
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapImgBack();
                                      },
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              top: getVerticalSize(13.00),
                                              right: getHorizontalSize(10.00)),
                                          child: Image.asset(
                                              ImageConstant.imgBack8,
                                              height: getVerticalSize(28.00),
                                              width: getHorizontalSize(48.00),
                                              fit: BoxFit.fill)))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(23.00),
                                          top: getVerticalSize(12.00),
                                          right: getHorizontalSize(23.00)),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(56.00)),
                                          child: Image.asset(
                                              ImageConstant.img111,
                                              height: getVerticalSize(112.00),
                                              width: getHorizontalSize(144.00),
                                              fit: BoxFit.fill)))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(23.00),
                                      top: getVerticalSize(64.00),
                                      right: getHorizontalSize(23.00)),
                                  child: Autocomplete<SelectionPopupModel>(
                                      optionsBuilder:
                                          (TextEditingValue textEditingValue) {
                                        if (textEditingValue.text.isEmpty) {
                                          return const Iterable<
                                              SelectionPopupModel>.empty();
                                        }
                                        return controller.autoCompleteItemList
                                            .where((SelectionPopupModel
                                                itemValue) {
                                          return itemValue.title
                                              .toLowerCase()
                                              .startsWith(textEditingValue.text
                                                  .toLowerCase());
                                        }).toList();
                                      },
                                      fieldViewBuilder: (BuildContext context,
                                          TextEditingController
                                              fieldTextEditingController,
                                          FocusNode fieldFocusNode,
                                          VoidCallback onFieldSubmitted) {
                                        return Container(
                                            height: getVerticalSize(50.00),
                                            width: getHorizontalSize(311.00),
                                            child: TextFormField(
                                                controller:
                                                    fieldTextEditingController,
                                                focusNode: fieldFocusNode,
                                                decoration: InputDecoration(
                                                    hintText:
                                                        "lbl_rabbit_name".tr,
                                                    hintStyle: TextStyle(
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
                                                            color: ColorConstant
                                                                .black9001e,
                                                            width: 1)),
                                                    focusedBorder: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(15.00)),
                                                        borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                    disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(15.00)), borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                    isDense: true,
                                                    contentPadding: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(15.00), right: getHorizontalSize(30.00), bottom: getVerticalSize(15.00))),
                                                style: TextStyle(color: ColorConstant.black90060, fontSize: getFontSize(14.0), fontFamily: 'Roboto', fontWeight: FontWeight.w400)));
                                      },
                                      onSelected:
                                          (SelectionPopupModel selection) {},
                                      displayStringForOption:
                                          (SelectionPopupModel option) {
                                        return option.title;
                                      })),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(23.00),
                                      top: getVerticalSize(12.00),
                                      right: getHorizontalSize(23.00)),
                                  child: Autocomplete<SelectionPopupModel>(
                                      optionsBuilder:
                                          (TextEditingValue textEditingValue) {
                                        if (textEditingValue.text.isEmpty) {
                                          return const Iterable<
                                              SelectionPopupModel>.empty();
                                        }
                                        return controller.autoCompleteItemList1
                                            .where((SelectionPopupModel
                                                itemValue) {
                                          return itemValue.title
                                              .toLowerCase()
                                              .startsWith(textEditingValue.text
                                                  .toLowerCase());
                                        }).toList();
                                      },
                                      fieldViewBuilder: (BuildContext context,
                                          TextEditingController
                                              fieldTextEditingController,
                                          FocusNode fieldFocusNode,
                                          VoidCallback onFieldSubmitted) {
                                        return Container(
                                            height: getVerticalSize(50.00),
                                            width: getHorizontalSize(311.00),
                                            child: TextFormField(
                                                controller:
                                                    fieldTextEditingController,
                                                focusNode: fieldFocusNode,
                                                decoration: InputDecoration(
                                                    hintText:
                                                        "lbl_rabbit_type".tr,
                                                    hintStyle: TextStyle(
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
                                                            color: ColorConstant
                                                                .black9001e,
                                                            width: 1)),
                                                    focusedBorder: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(15.00)),
                                                        borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                    disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(15.00)), borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                    isDense: true,
                                                    contentPadding: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(15.00), right: getHorizontalSize(30.00), bottom: getVerticalSize(15.00))),
                                                style: TextStyle(color: ColorConstant.black90060, fontSize: getFontSize(14.0), fontFamily: 'Roboto', fontWeight: FontWeight.w400)));
                                      },
                                      onSelected:
                                          (SelectionPopupModel selection) {},
                                      displayStringForOption:
                                          (SelectionPopupModel option) {
                                        return option.title;
                                      })),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(23.00),
                                      top: getVerticalSize(12.00),
                                      right: getHorizontalSize(23.00)),
                                  child: Autocomplete<SelectionPopupModel>(
                                      optionsBuilder:
                                          (TextEditingValue textEditingValue) {
                                        if (textEditingValue.text.isEmpty) {
                                          return const Iterable<
                                              SelectionPopupModel>.empty();
                                        }
                                        return controller.autoCompleteItemList2
                                            .where((SelectionPopupModel
                                                itemValue) {
                                          return itemValue.title
                                              .toLowerCase()
                                              .startsWith(textEditingValue.text
                                                  .toLowerCase());
                                        }).toList();
                                      },
                                      fieldViewBuilder: (BuildContext context,
                                          TextEditingController
                                              fieldTextEditingController,
                                          FocusNode fieldFocusNode,
                                          VoidCallback onFieldSubmitted) {
                                        return Container(
                                            height: getVerticalSize(50.00),
                                            width: getHorizontalSize(311.00),
                                            child: TextFormField(
                                                controller:
                                                    fieldTextEditingController,
                                                focusNode: fieldFocusNode,
                                                decoration: InputDecoration(
                                                    hintText:
                                                        "lbl_rabbit_breed".tr,
                                                    hintStyle: TextStyle(
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
                                                            color: ColorConstant
                                                                .black9001e,
                                                            width: 1)),
                                                    focusedBorder: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(15.00)),
                                                        borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                    disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(15.00)), borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                    isDense: true,
                                                    contentPadding: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(15.00), right: getHorizontalSize(30.00), bottom: getVerticalSize(15.00))),
                                                style: TextStyle(color: ColorConstant.black90060, fontSize: getFontSize(14.0), fontFamily: 'Roboto', fontWeight: FontWeight.w400)));
                                      },
                                      onSelected:
                                          (SelectionPopupModel selection) {},
                                      displayStringForOption:
                                          (SelectionPopupModel option) {
                                        return option.title;
                                      })),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
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
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  99.00),
                                                          margin: EdgeInsets.only(
                                                              left: getHorizontalSize(
                                                                  24.00)),
                                                          padding: EdgeInsets.only(
                                                              left: getHorizontalSize(
                                                                  10.00),
                                                              top: getVerticalSize(
                                                                  15.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      15.00)),
                                                          decoration: AppDecoration
                                                              .textstylerobotoregular142,
                                                          child: Text(
                                                              "lbl_height".tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .textstylerobotoregular142
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
                                                              .textstylerobotoregular142,
                                                          child: Text(
                                                              "lbl_width".tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .textstylerobotoregular142
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(14),
                                                                      letterSpacing: 0.25,
                                                                      height: 1.43))),
                                                      Container(
                                                          width: getHorizontalSize(
                                                              99.00),
                                                          margin: EdgeInsets.only(
                                                              left: getHorizontalSize(
                                                                  8.00),
                                                              right: getHorizontalSize(
                                                                  24.00)),
                                                          padding: EdgeInsets.only(
                                                              left: getHorizontalSize(
                                                                  10.00),
                                                              top: getVerticalSize(
                                                                  15.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      15.00)),
                                                          decoration: AppDecoration
                                                              .textstylerobotoregular142,
                                                          child: Text(
                                                              "lbl_weight".tr,
                                                              maxLines: null,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .textstylerobotoregular142
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(14),
                                                                      letterSpacing: 0.25,
                                                                      height: 1.43)))
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
                                                        controller: controller
                                                            .dateofAcquiController,
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
                                                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(15.00)), borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
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
                                                        controller: controller
                                                            .cagenumberController,
                                                        decoration: InputDecoration(
                                                            hintText:
                                                                "lbl_cage".tr,
                                                            hintStyle: AppStyle.textstylerobotoregular14.copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        14.0),
                                                                color: ColorConstant
                                                                    .black90060),
                                                            enabledBorder: OutlineInputBorder(
                                                                borderRadius: BorderRadius.circular(getHorizontalSize(15.00)),
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
                                                    top: getVerticalSize(67.59),
                                                    right: getHorizontalSize(
                                                        10.00)),
                                                child: GestureDetector(
                                                    onTap: () {
                                                      onTapBtnEdit();
                                                    },
                                                    child: Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: getVerticalSize(
                                                            40.60),
                                                        width: getHorizontalSize(
                                                            267.48),
                                                        decoration: AppDecoration
                                                            .textstylemontserratromanmedium153,
                                                        child: Text(
                                                            "lbl_edit".tr,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .textstylemontserratromanmedium153
                                                                .copyWith(
                                                                    fontSize:
                                                                        getFontSize(
                                                                            15),
                                                                    letterSpacing:
                                                                        0.90))))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        10.00),
                                                    top: getVerticalSize(18.14),
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
                                                            .textstylemontserratromanmedium154,
                                                        child: Text(
                                                            "lbl_save".tr,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .textstylemontserratromanmedium154
                                                                .copyWith(
                                                                    fontSize:
                                                                        getFontSize(
                                                                            15),
                                                                    letterSpacing:
                                                                        0.90)))))
                                          ])))
                            ]))))));
  }
 onTapImgBack() {
   Get.toNamed(AppRoutes.selectedCageScreen);
  }
  onTapBtnEdit() {
    Get.toNamed(AppRoutes.editDetailsScreen);
  }

  onTapBtnSave() {
   Get.toNamed(AppRoutes.selectedCageScreen);
  }
}
