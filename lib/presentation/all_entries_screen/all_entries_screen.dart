import 'controller/all_entries_controller.dart';
import 'package:flutter/material.dart';
import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/widgets/app_bar/appbar_image.dart';
import 'package:trendmicrofrontend/widgets/app_bar/appbar_image_1.dart';
import 'package:trendmicrofrontend/widgets/app_bar/appbar_title.dart';
import 'package:trendmicrofrontend/widgets/app_bar/custom_app_bar.dart';
import 'package:trendmicrofrontend/widgets/custom_elevated_button.dart';
import 'package:trendmicrofrontend/widgets/custom_icon_button.dart';

class AllEntriesScreen extends GetWidget<AllEntriesController> {
  const AllEntriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 49.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgMenu,
                    margin:
                        EdgeInsets.only(left: 21.h, top: 18.v, bottom: 17.v)),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_all_entries".tr),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgSearch,
                      margin: EdgeInsets.fromLTRB(21.h, 18.v, 21.h, 17.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 10.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.only(left: 20.h),
                          child: IntrinsicWidth(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                Expanded(
                                    child: Container(
                                        padding: EdgeInsets.all(8.h),
                                        decoration: AppDecoration.fillPrimary
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder7),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 2.v),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                            width: 193.h,
                                                            child: Text(
                                                                "msg_scan_pages_and_save"
                                                                    .tr,
                                                                maxLines: 2,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: theme
                                                                    .textTheme
                                                                    .titleSmall!
                                                                    .copyWith(
                                                                        height:
                                                                            1.43))),
                                                        SizedBox(height: 28.v),
                                                        CustomElevatedButton(
                                                            height: 27.v,
                                                            width: 81.h,
                                                            text:
                                                                "lbl_scan2".tr,
                                                            buttonStyle:
                                                                CustomButtonStyles
                                                                    .fillOnErrorContainerTL6,
                                                            buttonTextStyle:
                                                                CustomTextStyles
                                                                    .titleSmallPrimary)
                                                      ])),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 2.h, bottom: 2.v),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgCloseOnerrorcontainer12x12,
                                                            height:
                                                                12.adaptSize,
                                                            width:
                                                                12.adaptSize),
                                                        SizedBox(height: 22.v),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgTicketOnerrorcontainer,
                                                            height: 56.v,
                                                            width: 50.h)
                                                      ]))
                                            ]))),
                                Expanded(
                                    child: Container(
                                        margin: EdgeInsets.only(left: 15.h),
                                        padding: EdgeInsets.all(8.h),
                                        decoration: AppDecoration.m1.copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder7),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 2.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                            width: 197.h,
                                                            child: Text(
                                                                "msg_scan_pages_and_save"
                                                                    .tr,
                                                                maxLines: 2,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: theme
                                                                    .textTheme
                                                                    .titleSmall!
                                                                    .copyWith(
                                                                        height:
                                                                            1.43))),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgCloseOnerrorcontainer12x12,
                                                            height:
                                                                12.adaptSize,
                                                            width: 12.adaptSize)
                                                      ])),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 2.h, bottom: 2.v),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 31.v),
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        20.h,
                                                                    vertical:
                                                                        2.v),
                                                            decoration: AppDecoration
                                                                .white
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder7),
                                                            child: Text(
                                                                "lbl_scan2".tr,
                                                                style: CustomTextStyles
                                                                    .titleSmallRed600)),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgTicketOnerrorcontainer,
                                                            height: 56.v,
                                                            width: 50.h)
                                                      ]))
                                            ])))
                              ])))),
                  SizedBox(height: 21.v),
                  SizedBox(
                      height: 527.v,
                      width: 343.h,
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: EdgeInsets.only(right: 8.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.h, vertical: 12.v),
                                          decoration: AppDecoration
                                              .fillPrimaryContainer
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder7),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowright,
                                                    height: 12.v,
                                                    width: 7.h,
                                                    margin: EdgeInsets.only(
                                                        top: 16.v,
                                                        bottom: 10.v)),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgFrameOnprimarycontainer,
                                                    height: 28.adaptSize,
                                                    width: 28.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        left: 11.h,
                                                        top: 8.v,
                                                        bottom: 2.v)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 11.h, top: 1.v),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                              "lbl_161_97_169_136"
                                                                  .tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge),
                                                          SizedBox(height: 2.v),
                                                          Opacity(
                                                              opacity: 0.7,
                                                              child:
                                                                  GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        onTapTxtHttps1619716913();
                                                                      },
                                                                      child: Text(
                                                                          "msg_https_161_97_169_136_10000"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.bodySmallOnErrorContainerLight)))
                                                        ])),
                                                Spacer(),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgGroup1160,
                                                    height: 16.v,
                                                    width: 4.h,
                                                    margin: EdgeInsets.only(
                                                        top: 11.v,
                                                        right: 3.h,
                                                        bottom: 10.v))
                                              ])),
                                      SizedBox(height: 12.v),
                                      Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.h, vertical: 12.v),
                                          decoration: AppDecoration
                                              .fillPrimaryContainer
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder7),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowright,
                                                    height: 12.v,
                                                    width: 7.h,
                                                    margin: EdgeInsets.only(
                                                        top: 16.v,
                                                        bottom: 10.v)),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgFrameOnprimarycontainer,
                                                    height: 28.adaptSize,
                                                    width: 28.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        left: 11.h,
                                                        top: 8.v,
                                                        bottom: 2.v)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 11.h, top: 1.v),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                              "lbl_192_145_37_114"
                                                                  .tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge),
                                                          SizedBox(height: 2.v),
                                                          Opacity(
                                                              opacity: 0.7,
                                                              child:
                                                                  GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        onTapTxtHttps1921453711();
                                                                      },
                                                                      child: Text(
                                                                          "msg_https_192_145_37_114"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.bodySmallOnErrorContainerLight)))
                                                        ])),
                                                Spacer(),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgGroup1160,
                                                    height: 16.v,
                                                    width: 4.h,
                                                    margin: EdgeInsets.only(
                                                        top: 11.v,
                                                        right: 3.h,
                                                        bottom: 10.v))
                                              ])),
                                      SizedBox(height: 12.v),
                                      Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.h, vertical: 12.v),
                                          decoration: AppDecoration
                                              .fillPrimaryContainer
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder7),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowright,
                                                    height: 12.v,
                                                    width: 7.h,
                                                    margin: EdgeInsets.only(
                                                        top: 16.v,
                                                        bottom: 10.v)),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgFrameOnprimarycontainer,
                                                    height: 28.adaptSize,
                                                    width: 28.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        left: 11.h,
                                                        top: 8.v,
                                                        bottom: 2.v)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 11.h, top: 1.v),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                              "lbl_192_168_1_1"
                                                                  .tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge),
                                                          SizedBox(height: 2.v),
                                                          Opacity(
                                                              opacity: 0.7,
                                                              child:
                                                                  GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        onTapTxtHttps19216811();
                                                                      },
                                                                      child: Text(
                                                                          "msg_https_192_168_1_1"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.bodySmallOnErrorContainerLight)))
                                                        ])),
                                                Spacer(),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgGroup1160,
                                                    height: 16.v,
                                                    width: 4.h,
                                                    margin: EdgeInsets.only(
                                                        top: 11.v,
                                                        right: 3.h,
                                                        bottom: 10.v))
                                              ])),
                                      SizedBox(height: 12.v),
                                      Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.h, vertical: 12.v),
                                          decoration: AppDecoration
                                              .fillPrimaryContainer
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder7),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowright,
                                                    height: 12.v,
                                                    width: 7.h,
                                                    margin: EdgeInsets.only(
                                                        top: 16.v,
                                                        bottom: 10.v)),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgFrameOnprimarycontainer,
                                                    height: 28.adaptSize,
                                                    width: 28.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        left: 11.h,
                                                        top: 8.v,
                                                        bottom: 2.v)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 11.h, top: 1.v),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                              "lbl_207_244_250_189"
                                                                  .tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge),
                                                          SizedBox(height: 2.v),
                                                          Opacity(
                                                              opacity: 0.7,
                                                              child:
                                                                  GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        onTapTxtHttps2072442501();
                                                                      },
                                                                      child: Text(
                                                                          "msg_https_207_244_250_189"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.bodySmallOnErrorContainerLight)))
                                                        ])),
                                                Spacer(),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgGroup1160,
                                                    height: 16.v,
                                                    width: 4.h,
                                                    margin: EdgeInsets.only(
                                                        top: 11.v,
                                                        right: 3.h,
                                                        bottom: 10.v))
                                              ])),
                                      SizedBox(height: 12.v),
                                      Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.h, vertical: 13.v),
                                          decoration: AppDecoration
                                              .fillPrimaryContainer
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder7),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowright,
                                                    height: 12.v,
                                                    width: 7.h,
                                                    margin: EdgeInsets.only(
                                                        top: 14.v,
                                                        bottom: 11.v)),
                                                CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgPpt1,
                                                    height: 35.adaptSize,
                                                    width: 35.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        left: 11.h, top: 3.v)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 11.h,
                                                        top: 10.v,
                                                        bottom: 9.v),
                                                    child: Text("lbl_3e3e".tr,
                                                        style: theme.textTheme
                                                            .labelLarge)),
                                                Spacer(),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgGroup1160,
                                                    height: 16.v,
                                                    width: 4.h,
                                                    margin: EdgeInsets.only(
                                                        top: 11.v,
                                                        right: 3.h,
                                                        bottom: 10.v))
                                              ])),
                                      SizedBox(height: 12.v),
                                      Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.h, vertical: 16.v),
                                          decoration: AppDecoration
                                              .fillPrimaryContainer
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder7),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowright,
                                                    height: 12.v,
                                                    width: 7.h,
                                                    margin: EdgeInsets.only(
                                                        top: 8.v,
                                                        bottom: 12.v)),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgAccessibilityi,
                                                    height: 28.adaptSize,
                                                    width: 28.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        left: 11.h,
                                                        bottom: 4.v)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 11.h,
                                                        top: 5.v,
                                                        bottom: 8.v),
                                                    child: Text(
                                                        "msg_accessibility_inspector_app"
                                                            .tr,
                                                        style: theme.textTheme
                                                            .labelLarge)),
                                                Spacer(),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgGroup1160,
                                                    height: 16.v,
                                                    width: 4.h,
                                                    margin: EdgeInsets.only(
                                                        top: 8.v,
                                                        right: 3.h,
                                                        bottom: 7.v))
                                              ])),
                                      SizedBox(height: 19.v),
                                      Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.h, vertical: 12.v),
                                          decoration: AppDecoration
                                              .fillPrimaryContainer
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder7),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowright,
                                                    height: 12.v,
                                                    width: 7.h,
                                                    margin: EdgeInsets.only(
                                                        top: 16.v,
                                                        bottom: 10.v)),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgEnvatologo084,
                                                    height: 28.adaptSize,
                                                    width: 28.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        left: 11.h,
                                                        top: 8.v,
                                                        bottom: 2.v)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 11.h, top: 1.v),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                              "lbl_account_envato"
                                                                  .tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge),
                                                          SizedBox(height: 1.v),
                                                          Opacity(
                                                              opacity: 0.7,
                                                              child:
                                                                  GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        onTapTxtWeburl();
                                                                      },
                                                                      child: Text(
                                                                          "msg_https_account_envato_com"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.bodySmallOnErrorContainerLight)))
                                                        ])),
                                                Spacer(),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgGroup1160,
                                                    height: 16.v,
                                                    width: 4.h,
                                                    margin: EdgeInsets.only(
                                                        top: 11.v,
                                                        right: 3.h,
                                                        bottom: 10.v))
                                              ]))
                                    ]))),
                        CustomIconButton(
                            height: 67.adaptSize,
                            width: 67.adaptSize,
                            margin: EdgeInsets.only(bottom: 23.v),
                            padding: EdgeInsets.all(21.h),
                            alignment: Alignment.bottomRight,
                            child:
                                CustomImageView(svgPath: ImageConstant.imgPlus))
                      ])),
                  SizedBox(height: 5.v)
                ]))));
  }

  onTapTxtHttps1619716913() {
    // TODO: implement Actions
  }

  onTapTxtHttps1921453711() {
    // TODO: implement Actions
  }

  onTapTxtHttps19216811() {
    // TODO: implement Actions
  }

  onTapTxtHttps2072442501() {
    // TODO: implement Actions
  }

  onTapTxtWeburl() {
    // TODO: implement Actions
  }
}
