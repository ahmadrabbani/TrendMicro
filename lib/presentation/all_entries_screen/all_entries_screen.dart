import 'package:hive/hive.dart';
import 'package:trendmicrofrontend/presentation/all_entries_screen/models/password_entry.dart';
import 'package:trendmicrofrontend/presentation/all_entries_screen/password_form.dart';
import 'package:trendmicrofrontend/presentation/drawer_menu_draweritem/drawer_menu_draweritem.dart';

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
   AllEntriesScreen({Key? key}) : super(key: key);
   GlobalKey<ScaffoldState> _scaffoldKey =  GlobalKey<ScaffoldState>();
      // controller = Get.put(AllEntriesController());


  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    
    return SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
            appBar: CustomAppBar(
                leadingWidth: 49.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgMenu,
                    margin:
                        EdgeInsets.only(left: 21.h, top: 18.v, bottom: 17.v),
                        onTap: () {
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
                                                                        openUrlWeb();
                                                                      },
                                                                      child: Text(
                                                                          "msg_https_161_97_169_136_10000"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.bodySmallOnErrorContainerLight)))
                                                        ])),
                                                Spacer(),
                                    ])
                                    )
                      ])
                                )
                                      ),
                                       
                                       
                                       CustomIconButton(
                            height: 67.adaptSize,
                            width: 67.adaptSize,
                            margin: EdgeInsets.only(bottom: 23.v),
                            padding: EdgeInsets.all(21.h),
                            alignment: Alignment.bottomRight,
                            onTap: () {
                                       showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                          String website = "";
                                          String username = "";
                                          String password = "";
                                          

                                            return AlertDialog(
                                              backgroundColor: const Color.fromARGB(255, 234, 5, 5).withOpacity(0.3),
                                              title: Text('Add Password Entry'),
                                              content:  Container(
                                                constraints: BoxConstraints(maxHeight: 300), 
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [Colors.blue, Colors.red], // Define your gradient colors
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                  ),
                                                ),
                                                child:MyForm(
                                                onSaved: (web, user, pass) {
                                                  website = web;
                                                  username = user;
                                                  password = pass;
                                                },
                                              ),
                                              ),
                                              actions: <Widget>[
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text('Cancel'),
                                                ),
                                                TextButton(
                                                  onPressed: () async {
                                                    final passwordsBox = await Hive.openBox<PasswordEntry>('passwords');
                                                    passwordsBox.add(PasswordEntry(website, username, password));
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text('Save'),
                                                ),
                                              ],
                                            );
                                          },
                                       );
                                        
                              },
                            child:
                                CustomImageView(svgPath: ImageConstant.imgPlus))
                      ])),
                  SizedBox(height: 5.v)
                ]))));
  }
  

  openUrlWeb() {
    // TODO: implement Actions
  }

}
