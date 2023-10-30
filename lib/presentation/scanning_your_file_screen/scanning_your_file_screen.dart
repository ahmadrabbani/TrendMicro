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
                                      CustomImageView(
                                          imagePath: ImageConstant.imgPdf3,
                                          height: 132.adaptSize,
                                          width: 132.adaptSize,
                                          alignment: Alignment.topCenter,
                                          margin: EdgeInsets.only(top: 130.v)),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 17.h),
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 72.v),
                                              decoration: AppDecoration.white
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder7),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    SizedBox(height: 63.v),
                                                    Container(
                                                        height: 12.v,
                                                        width: 257.h,
                                                        decoration:
                                                            BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .primary)),
                                                    SizedBox(height: 4.v),
                                                    Divider(),
                                                    SizedBox(height: 4.v),
                                                    Divider(),
                                                    SizedBox(height: 4.v),
                                                    Opacity(
                                                        opacity: 0.8,
                                                        child: Divider(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(
                                                                    0.64))),
                                                    SizedBox(height: 4.v),
                                                    Opacity(
                                                        opacity: 0.8,
                                                        child: Divider(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(
                                                                    0.64))),
                                                    SizedBox(height: 4.v),
                                                    Opacity(
                                                        opacity: 0.6,
                                                        child: Divider(
                                                            color: theme
                                                                .colorScheme
                                                                .secondaryContainer)),
                                                    SizedBox(height: 4.v),
                                                    SizedBox(
                                                        height: 2.v,
                                                        width: 257.h,
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: SizedBox(
                                                                      width:
                                                                          257.h,
                                                                      child:
                                                                          Divider())),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: SizedBox(
                                                                      height: 2.v,
                                                                      width: 257.h,
                                                                      child: Stack(alignment: Alignment.center, children: [
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            child: SizedBox(width: 257.h, child: Divider())),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            child: SizedBox(
                                                                                height: 2.v,
                                                                                width: 257.h,
                                                                                child: Stack(alignment: Alignment.center, children: [
                                                                                  Align(alignment: Alignment.center, child: SizedBox(width: 257.h, child: Divider())),
                                                                                  Align(
                                                                                      alignment: Alignment.center,
                                                                                      child: SizedBox(
                                                                                          height: 2.v,
                                                                                          width: 257.h,
                                                                                          child: Stack(alignment: Alignment.center, children: [
                                                                                            Align(alignment: Alignment.center, child: SizedBox(width: 257.h, child: Divider())),
                                                                                            Opacity(opacity: 0.6, child: Align(alignment: Alignment.center, child: SizedBox(width: 257.h, child: Divider(color: theme.colorScheme.secondaryContainer))))
                                                                                          ])))
                                                                                ])))
                                                                      ])))
                                                            ])),
                                                    SizedBox(height: 4.v),
                                                    Opacity(
                                                        opacity: 0.6,
                                                        child: Divider(
                                                            color: theme
                                                                .colorScheme
                                                                .secondaryContainer)),
                                                    SizedBox(height: 4.v),
                                                    Opacity(
                                                        opacity: 0.5,
                                                        child: Divider(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(
                                                                    0.53))),
                                                    SizedBox(height: 4.v),
                                                    Opacity(
                                                        opacity: 0.5,
                                                        child: Divider(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(
                                                                    0.53))),
                                                    SizedBox(height: 4.v),
                                                    Opacity(
                                                        opacity: 0.5,
                                                        child: Divider(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(
                                                                    0.53))),
                                                    SizedBox(height: 4.v),
                                                    Opacity(
                                                        opacity: 0.4,
                                                        child: Divider(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(
                                                                    0.49))),
                                                    SizedBox(height: 4.v),
                                                    Opacity(
                                                        opacity: 0.4,
                                                        child: Divider(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(
                                                                    0.49))),
                                                    SizedBox(height: 4.v),
                                                    Opacity(
                                                        opacity: 0.4,
                                                        child: Divider(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(
                                                                    0.49))),
                                                    SizedBox(height: 4.v),
                                                    Opacity(
                                                        opacity: 0.3,
                                                        child: Divider(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(
                                                                    0.46))),
                                                    SizedBox(height: 4.v),
                                                    Opacity(
                                                        opacity: 0.3,
                                                        child: Divider(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(
                                                                    0.46))),
                                                    SizedBox(height: 4.v),
                                                    Opacity(
                                                        opacity: 0.3,
                                                        child: Divider(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(
                                                                    0.46))),
                                                    SizedBox(height: 4.v),
                                                    Opacity(
                                                        opacity: 0.23,
                                                        child: Divider(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(
                                                                    0.44))),
                                                    SizedBox(height: 4.v),
                                                    Opacity(
                                                        opacity: 0.23,
                                                        child: Divider(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(
                                                                    0.44))),
                                                    SizedBox(height: 4.v),
                                                    Opacity(
                                                        opacity: 0.23,
                                                        child: Divider(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(
                                                                    0.44))),
                                                    SizedBox(height: 4.v),
                                                    Opacity(
                                                        opacity: 0.16,
                                                        child: Divider(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(
                                                                    0.41))),
                                                    SizedBox(height: 4.v),
                                                    Opacity(
                                                        opacity: 0.16,
                                                        child: Divider(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(
                                                                    0.41))),
                                                    SizedBox(height: 4.v),
                                                    Opacity(
                                                        opacity: 0.16,
                                                        child: Divider(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(
                                                                    0.41))),
                                                    SizedBox(height: 4.v),
                                                    Opacity(
                                                        opacity: 0.12,
                                                        child: Divider(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(
                                                                    0.4))),
                                                    SizedBox(height: 4.v),
                                                    Opacity(
                                                        opacity: 0.12,
                                                        child: Divider(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(
                                                                    0.4))),
                                                    SizedBox(height: 4.v),
                                                    Opacity(
                                                        opacity: 0.06,
                                                        child: Divider(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(
                                                                    0.37))),
                                                    SizedBox(height: 4.v),
                                                    Opacity(
                                                        opacity: 0.06,
                                                        child: Divider(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(
                                                                    0.37))),
                                                    SizedBox(height: 4.v),
                                                    Opacity(
                                                        opacity: 0.03,
                                                        child: Divider(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(
                                                                    0.36)))
                                                  ])))
                                    ])),
                            SizedBox(height: 53.v),
                            SizedBox(
                                height: 70.adaptSize,
                                width: 70.adaptSize,
                                child: CircularProgressIndicator(value: 0.5))
                          ]))
                    ]))));
  }
}
