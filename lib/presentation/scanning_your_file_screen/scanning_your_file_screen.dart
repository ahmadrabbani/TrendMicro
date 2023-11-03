import 'controller/scanning_your_file_controller.dart';
import 'package:flutter/material.dart';
import 'package:trendmicrofrontend/core/app_export.dart';

class ScanningYourFileScreen extends GetWidget<ScanningYourFileController> {
  const ScanningYourFileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 34.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgMenu,
                          height: 20.v,
                          width: 28.h),
                      Padding(
                          padding: EdgeInsets.only(left: 67.h, top: 29.v),
                          child: Text("msg_scanning_your_file".tr,
                              style: theme.textTheme.titleLarge)),
                      Container(
                          margin: EdgeInsets.only(
                              top: 10.v, right: 14.h, bottom: 5.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 22.h, vertical: 31.v),
                          decoration: AppDecoration.fillPrimaryContainer
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            SizedBox(
                                height: 410.v,
                                width: 291.h,
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgCar,
                                          height: 29.v,
                                          width: 34.h,
                                          radius: BorderRadius.circular(7.h),
                                          alignment: Alignment.topRight),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgCar,
                                          height: 29.v,
                                          width: 34.h,
                                          radius: BorderRadius.circular(7.h),
                                          alignment: Alignment.bottomRight),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgDownload,
                                          height: 29.v,
                                          width: 34.h,
                                          radius: BorderRadius.circular(7.h),
                                          alignment: Alignment.topLeft),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgDownload,
                                          height: 29.v,
                                          width: 34.h,
                                          radius: BorderRadius.circular(7.h),
                                          alignment: Alignment.bottomLeft),
                                      SizedBox(
                                          height:400.adaptSize,
                                          width: 300.adaptSize,
                                          
                                          // margin: EdgeInsets.only(top: 130.v)
                                          child: Image.asset(
                                        ImageConstant.scan_file, // Replace with the actual path to your GIF image
                                          
                                          alignment: Alignment.topCenter,
                                           // Set the height as needed
                                      ),
                                          ),
                                      
                                      SizedBox(height: 53.v),
                                      SizedBox(
                                          height: 70.adaptSize,
                                          width: 70.adaptSize,
                                          // child: CircularProgressIndicator(value: 0.5)
                                          )
                                      ]))
                        ])
                      )
                    ])
                  )
                ));
  }
}
