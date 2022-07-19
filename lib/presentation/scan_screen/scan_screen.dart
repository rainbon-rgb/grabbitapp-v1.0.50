import 'dart:io';
import 'controller/scan_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbitapp/core/app_export.dart';
import 'package:image_picker/image_picker.dart';


class ScanScreen extends StatefulWidget{

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {

  File? image;

  Future pickImage() async {
  
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) return;

    final imageTemporary = File(image.path);
    setState(() 
    => this.image = imageTemporary);
  }

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
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(135.00),
                                      right: getHorizontalSize(10.00)),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.bluegray100,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(15.00))),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(5.00),
                                                top: getVerticalSize(50.00)),
                                            child: image != null ? Image.file(image!) :Image.asset(
                                                ImageConstant.imgRabbitdflt1,
                                                height: getVerticalSize(236.00),
                                                width:
                                                getHorizontalSize(320.00),
                                                fit: BoxFit.fill)),
                                        GestureDetector(
                                            onTap: () {
                                              onTapImgCameraicon();
                                            },
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        10.00),
                                                    top: getVerticalSize(43.00),
                                                    right: getHorizontalSize(
                                                        10.00),
                                                    bottom:
                                                    getVerticalSize(27.29)),
                                                child: Image.asset(
                                                    ImageConstant.imgCameraicon,
                                                    height:
                                                    getVerticalSize(77.71),
                                                    width: getHorizontalSize(
                                                        82.93),
                                                    fit: BoxFit.fill)))
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(135.10),
                                      right: getHorizontalSize(10.00),
                                      bottom: getVerticalSize(20.00)),
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapBtnNext();
                                      },
                                      child: Container(
                                          alignment: Alignment.center,
                                          height: getVerticalSize(40.60),
                                          width: getHorizontalSize(267.48),
                                          decoration: AppDecoration
                                              .textstylemontserratromanmedium20,
                                          child: Text("lbl_next".tr,
                                              textAlign: TextAlign.center,
                                              style: AppStyle
                                                  .textstylemontserratromanmedium20
                                                  .copyWith(
                                                  fontSize: getFontSize(20),
                                                  letterSpacing: 1.20)))))
                            ]))))));
  }

  onTapImgCameraicon() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
//TODO: Permission - use imageList for using selected images
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapBtnNext() {
    Get.toNamed(AppRoutes.rabbitGeneratedInfoScreen);
  }
}
