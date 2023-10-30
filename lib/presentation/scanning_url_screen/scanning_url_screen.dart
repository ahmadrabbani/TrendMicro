import 'controller/scanning_url_controller.dart';
import 'package:flutter/material.dart';
import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/widgets/app_bar/appbar_image.dart';
import 'package:trendmicrofrontend/widgets/app_bar/custom_app_bar.dart';

class ScanningUrlScreen extends GetWidget<ScanningUrlController> {
  const ScanningUrlScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: double.maxFinite,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgMenu,
                    margin: EdgeInsets.fromLTRB(21.h, 18.v, 326.h, 18.v))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 11.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_scanning_url".tr,
                          style: theme.textTheme.titleLarge),
                      SizedBox(height: 10.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 23.v),
                          decoration: AppDecoration.fillPrimaryContainer
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 10.v),
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
                                              radius:
                                                  BorderRadius.circular(7.h),
                                              alignment: Alignment.topRight),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgCar,
                                              height: 29.v,
                                              width: 34.h,
                                              radius:
                                                  BorderRadius.circular(7.h),
                                              alignment: Alignment.bottomRight),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgDownload,
                                              height: 29.v,
                                              width: 34.h,
                                              radius:
                                                  BorderRadius.circular(7.h),
                                              alignment: Alignment.topLeft),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgDownload,
                                              height: 29.v,
                                              width: 34.h,
                                              radius:
                                                  BorderRadius.circular(7.h),
                                              alignment: Alignment.bottomLeft),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgGroupBlack90001,
                                              height: 118.v,
                                              width: 200.h,
                                              alignment: Alignment.topCenter,
                                              margin:
                                                  EdgeInsets.only(top: 121.v)),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgGroup1134,
                                              height: 174.v,
                                              width: 257.h)
                                        ])),
                                SizedBox(height: 32.v),
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: theme
                                                .colorScheme.onPrimaryContainer,
                                            width: 6.h),
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder26),
                                    child: Container(
                                        height: 52.adaptSize,
                                        width: 52.adaptSize,
                                        padding: EdgeInsets.all(3.h),
                                        decoration: AppDecoration
                                            .outlineOnPrimaryContainer
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder26),
                                        child: Stack(
                                            alignment: Alignment.centerRight,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgRefresh,
                                                  height: 46.v,
                                                  width: 23.h,
                                                  alignment:
                                                      Alignment.centerRight),
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 9.h),
                                                      child: Text("lbl_50".tr,
                                                          style: CustomTextStyles
                                                              .labelLargeMedium)))
                                            ])))
                              ])),
                      SizedBox(height: 5.v)
                    ]))));
  }
}
