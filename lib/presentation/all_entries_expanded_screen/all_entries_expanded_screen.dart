import 'package:trendmicrofrontend/presentation/drawer_menu_draweritem/drawer_menu_draweritem.dart';

import '../all_entries_expanded_screen/widgets/usernetwork_item_widget.dart';
import 'controller/all_entries_expanded_controller.dart';
import 'models/usernetwork_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/core/utils/validation_functions.dart';
import 'package:trendmicrofrontend/widgets/app_bar/appbar_image.dart';
import 'package:trendmicrofrontend/widgets/app_bar/appbar_image_1.dart';
import 'package:trendmicrofrontend/widgets/app_bar/appbar_title.dart';
import 'package:trendmicrofrontend/widgets/app_bar/custom_app_bar.dart';
import 'package:trendmicrofrontend/widgets/custom_elevated_button.dart';
import 'package:trendmicrofrontend/widgets/custom_icon_button.dart';
import 'package:trendmicrofrontend/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AllEntriesExpandedScreen extends GetWidget<AllEntriesExpandedController> {
  AllEntriesExpandedScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> _scaffoldKey =  GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 49.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgMenu,
                    margin:
                        EdgeInsets.only(left: 21.h, top: 18.v, bottom: 17.v),
                        onTap: (){
                  _scaffoldKey.currentState?.openDrawer();

                  print('AppbarImage tapped!');
                },
                        ),
                        
                centerTitle: true,
                title: AppbarTitle(text: "lbl_all_entries".tr),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgSearch,
                      margin: EdgeInsets.fromLTRB(21.h, 18.v, 21.h, 17.v))
                ]),
                            drawer: DrawerMenuDraweritem(),

            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 10.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: IntrinsicWidth(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                        Expanded(
                                            child: Container(
                                                padding: EdgeInsets.all(8.h),
                                                decoration: AppDecoration
                                                    .fillPrimary
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder7),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  bottom: 2.v),
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                SizedBox(
                                                                    width:
                                                                        193.h,
                                                                    child: Text(
                                                                        "msg_scan_pages_and_save"
                                                                            .tr,
                                                                        maxLines:
                                                                            2,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        style: theme
                                                                            .textTheme
                                                                            .titleSmall!
                                                                            .copyWith(height: 1.43))),
                                                                SizedBox(
                                                                    height:
                                                                        28.v),
                                                                CustomElevatedButton(
                                                                    height:
                                                                        27.v,
                                                                    width: 81.h,
                                                                    text:
                                                                        "lbl_scan2"
                                                                            .tr,
                                                                    buttonStyle:
                                                                        CustomButtonStyles
                                                                            .fillOnErrorContainerTL6,
                                                                    buttonTextStyle:
                                                                        CustomTextStyles
                                                                            .titleSmallPrimary)
                                                              ])),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 2.h,
                                                                  bottom: 2.v),
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgCloseOnerrorcontainer12x12,
                                                                    height: 12
                                                                        .adaptSize,
                                                                    width: 12
                                                                        .adaptSize),
                                                                SizedBox(
                                                                    height:
                                                                        22.v),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgTicketOnerrorcontainer,
                                                                    height:
                                                                        56.v,
                                                                    width: 50.h)
                                                              ]))
                                                    ]))),
                                        Expanded(
                                            child: Container(
                                                margin:
                                                    EdgeInsets.only(left: 15.h),
                                                padding: EdgeInsets.all(8.h),
                                                decoration: AppDecoration.m1
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder7),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
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
                                                                    width:
                                                                        197.h,
                                                                    child: Text(
                                                                        "msg_scan_pages_and_save"
                                                                            .tr,
                                                                        maxLines:
                                                                            2,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        style: theme
                                                                            .textTheme
                                                                            .titleSmall!
                                                                            .copyWith(height: 1.43))),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgCloseOnerrorcontainer12x12,
                                                                    height: 12
                                                                        .adaptSize,
                                                                    width: 12
                                                                        .adaptSize)
                                                              ])),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 2.h,
                                                                  bottom: 2.v),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                    margin: EdgeInsets.only(
                                                                        top: 31
                                                                            .v),
                                                                    padding: EdgeInsets.symmetric(
                                                                        horizontal: 20
                                                                            .h,
                                                                        vertical: 2
                                                                            .v),
                                                                    decoration: AppDecoration
                                                                        .white
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder7),
                                                                    child: Text(
                                                                        "lbl_scan2"
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .titleSmallRed600)),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgTicketOnerrorcontainer,
                                                                    height:
                                                                        56.v,
                                                                    width: 50.h)
                                                              ]))
                                                    ])))
                                      ]))),
                              Container(
                                  margin:
                                      EdgeInsets.only(top: 21.v, right: 20.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.h, vertical: 12.v),
                                  decoration: AppDecoration.fillPrimaryContainer
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder7),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgArrowdown,
                                            height: 7.v,
                                            width: 12.h,
                                            margin: EdgeInsets.only(
                                                top: 18.v, bottom: 13.v)),
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
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("lbl_161_97_169_136".tr,
                                                      style: theme.textTheme
                                                          .labelLarge),
                                                  SizedBox(height: 2.v),
                                                  Opacity(
                                                      opacity: 0.7,
                                                      child: GestureDetector(
                                                          onTap: () {
                                                            onTapTxtHttps1619716913();
                                                          },
                                                          child: Text(
                                                              "msg_https_161_97_169_136_10000"
                                                                  .tr,
                                                              style: CustomTextStyles
                                                                  .bodySmallOnErrorContainerLight)))
                                                ])),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgGroup1160,
                                            height: 16.v,
                                            width: 4.h,
                                            margin: EdgeInsets.only(
                                                top: 11.v,
                                                right: 3.h,
                                                bottom: 10.v))
                                      ])),
                              Container(
                                  margin:
                                      EdgeInsets.only(top: 12.v, right: 20.h),
                                  padding: EdgeInsets.symmetric(vertical: 10.v),
                                  decoration: AppDecoration.fillPrimaryContainer
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder7),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomTextFormField(
                                            controller:
                                                controller.rootController,
                                            hintText: "lbl_root".tr,
                                            hintStyle:
                                                theme.textTheme.labelLarge!,
                                            suffix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    30.h, 1.v, 14.h, 12.v),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgFrameGreen600)),
                                            suffixConstraints:
                                                BoxConstraints(maxHeight: 29.v),
                                            contentPadding:
                                                EdgeInsets.only(left: 10.h),
                                            borderDecoration:
                                                TextFormFieldStyleHelper
                                                    .underLineOnErrorContainer,
                                            filled: false),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 10.h,
                                                    top: 13.v,
                                                    right: 14.h),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgGroup1163,
                                                          height: 6.v,
                                                          width: 105.h,
                                                          margin: EdgeInsets
                                                              .symmetric(
                                                                  vertical:
                                                                      5.v)),
                                                      Spacer(),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgEye,
                                                          height: 16.v,
                                                          width: 23.h),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgFrameGreen600,
                                                          height: 16.v,
                                                          width: 13.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 17.h))
                                                    ]))),
                                        SizedBox(height: 6.v),
                                        CustomTextFormField(
                                            controller:
                                                controller.passwordController,
                                            hintText: "lbl_weak_password".tr,
                                            hintStyle: CustomTextStyles
                                                .labelLargeRed500,
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType:
                                                TextInputType.visiblePassword,
                                            prefix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    10.h, 1.v, 9.h, 15.v),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgWarning)),
                                            prefixConstraints:
                                                BoxConstraints(maxHeight: 30.v),
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidPassword(value,
                                                      isRequired: true))) {
                                                return "Please enter valid password";
                                              }
                                              return null;
                                            },
                                            obscureText: true,
                                            contentPadding:
                                                EdgeInsets.only(right: 30.h),
                                            borderDecoration:
                                                TextFormFieldStyleHelper
                                                    .underLineOnErrorContainer,
                                            filled: false),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 10.h, top: 11.v),
                                            child: Text(
                                                "lbl_open_in_browser".tr,
                                                style: CustomTextStyles
                                                    .labelLargeGreen600))
                                      ])),
                              SizedBox(height: 14.v),
                              SizedBox(
                                  height: 382.v,
                                  width: 343.h,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(right: 8.h),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Obx(() =>
                                                          ListView.separated(
                                                              physics:
                                                                  NeverScrollableScrollPhysics(),
                                                              shrinkWrap: true,
                                                              separatorBuilder:
                                                                  (context,
                                                                      index) {
                                                                return SizedBox(
                                                                    height:
                                                                        12.v);
                                                              },
                                                              itemCount: controller
                                                                  .allEntriesExpandedModelObj
                                                                  .value
                                                                  .usernetworkItemList
                                                                  .value
                                                                  .length,
                                                              itemBuilder:
                                                                  (context,
                                                                      index) {
                                                                UsernetworkItemModel
                                                                    model =
                                                                    controller
                                                                        .allEntriesExpandedModelObj
                                                                        .value
                                                                        .usernetworkItemList
                                                                        .value[index];
                                                                return UsernetworkItemWidget(
                                                                    model);
                                                              })),
                                                      SizedBox(height: 12.v),
                                                      Container(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      10.h,
                                                                  vertical:
                                                                      16.v),
                                                          decoration: AppDecoration
                                                              .fillPrimaryContainer
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder7),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowright,
                                                                    height:
                                                                        12.v,
                                                                    width: 7.h,
                                                                    margin: EdgeInsets.only(
                                                                        top:
                                                                            8.v,
                                                                        bottom:
                                                                            12.v)),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgAccessibilityi,
                                                                    height: 28
                                                                        .adaptSize,
                                                                    width: 28
                                                                        .adaptSize,
                                                                    margin: EdgeInsets.only(
                                                                        left: 11
                                                                            .h,
                                                                        bottom:
                                                                            4.v)),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 11
                                                                            .h,
                                                                        top:
                                                                            7.v,
                                                                        bottom: 11
                                                                            .v),
                                                                    child: Text(
                                                                        "msg_accessibility_inspector_app"
                                                                            .tr,
                                                                        style: theme
                                                                            .textTheme
                                                                            .labelLarge)),
                                                                Spacer(),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgGroup1160,
                                                                    height:
                                                                        16.v,
                                                                    width: 4.h,
                                                                    margin: EdgeInsets.only(
                                                                        top:
                                                                            8.v,
                                                                        right:
                                                                            3.h,
                                                                        bottom:
                                                                            7.v))
                                                              ]))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                margin: EdgeInsets.only(
                                                    top: 318.v, right: 8.h),
                                                padding: EdgeInsets.all(10.h),
                                                decoration: AppDecoration
                                                    .fillPrimaryContainer
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder7),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowright,
                                                          height: 12.v,
                                                          width: 7.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 18.v,
                                                                  bottom:
                                                                      12.v)),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgEnvatologo084,
                                                          height: 28.adaptSize,
                                                          width: 28.adaptSize,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 11.h,
                                                                  top: 10.v,
                                                                  bottom: 4.v)),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 11.h,
                                                                  top: 5.v),
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
                                                                SizedBox(
                                                                    height:
                                                                        3.v),
                                                                Opacity(
                                                                    opacity:
                                                                        0.7,
                                                                    child: GestureDetector(
                                                                        onTap: () {
                                                                          onTapTxtWeburl();
                                                                        },
                                                                        child: Text("msg_https_account_envato_com".tr, style: CustomTextStyles.bodySmallOnErrorContainerLight)))
                                                              ])),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgGroup1160,
                                                          height: 16.v,
                                                          width: 4.h,
                                                          
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 44.h,
                                                                  top: 13.v,
                                                                  bottom: 12.v))
                                                    ]))),
                                        CustomIconButton(
                                            height: 67.adaptSize,
                                            width: 67.adaptSize,
                                            margin:
                                                EdgeInsets.only(bottom: 115.v),
                                            padding: EdgeInsets.all(21.h),
                                            alignment: Alignment.bottomRight,
                                            child: CustomImageView(
                                                svgPath: ImageConstant.imgPlus))
                                      ]))
                            ]))))));
  }

  onTapTxtHttps1619716913() {
    // TODO: implement Actions
  }

  onTapTxtWeburl() {
    // TODO: implement Actions
  }
}
