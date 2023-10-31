import 'package:trendmicrofrontend/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:trendmicrofrontend/presentation/drawer_menu_draweritem/controller/drawer_menu_controller.dart';
import 'package:trendmicrofrontend/presentation/drawer_menu_draweritem/drawer_menu_draweritem.dart';

import 'controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/widgets/custom_elevated_button.dart';
import 'package:trendmicrofrontend/widgets/custom_text_form_field.dart';
// import 'package:trendmicrofrontend/widgets/app_bar/custom_app_bar.dart';
import 'package:trendmicrofrontend/widgets/app_bar/appbar_image.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:file_picker/file_picker.dart';


class HomeScreen extends GetWidget<HomeController> {
    // final controller =  DrawerMenuController(); // Assuming you have a controller

  const HomeScreen({Key? key}) : super(key: key);
  // final cont = new DrawerMenuController();
    // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  // void _openDrawer() {
    
  // }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return 
    
        Scaffold(
          appBar: AppBar(
            
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: 28.v,
            automaticallyImplyLeading: false,
            

            titleSpacing: 0,
            centerTitle: false,
              title: Text('My Home Screen'),
              leading: 
              AppbarImage(
                imagePath: '', // Provide the image path here
                svgPath: ImageConstant.imgMenu, // Provide the SVG path here
                // margin:'',
                height: 16.v,
                width: 16.h,
                onTap: () {
                  // Handle the onTap action here
                  // AppNavigationScreen()
                  // DrawerMenuDraweritem();
                  // if(key != Null)
                  // key.currentState.openDrawer();
                  // openDrawer();
                  print('AppbarImage tapped!');
                },
              ),
            ),
            drawer: DrawerMenuDraweritem(),
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      // SizedBox(height: 23.v),
                      // CustomImageView(
                      //     svgPath: ImageConstant.imgMenu,
                      //     height: 20.v,
                      //     width: 28.h
                      //     ),
                      // SizedBox(height: 26.v)
                      Text("lbl_scan_your_files".tr,
                          style: theme.textTheme.titleLarge),
                      SizedBox(height: 13.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 76.h, vertical: 21.v),
                          decoration: AppDecoration.fillPrimaryContainer
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 12.v),
                                SizedBox(
                                    height: 192.v,
                                    width: 181.h,
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgGroup,
                                              height: 134.v,
                                              width: 79.h,
                                              alignment: Alignment.center),
                                          Opacity(
                                              opacity: 0.1,
                                              child: Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height: 173.v,
                                                      width: 160.h,
                                                      decoration: BoxDecoration(
                                                          color: theme
                                                              .colorScheme
                                                              .onErrorContainer
                                                              .withOpacity(
                                                                  0.39),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      9.h))))),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgCar,
                                              height: 18.v,
                                              width: 20.h,
                                              radius:
                                                  BorderRadius.circular(7.h),
                                              alignment: Alignment.topRight),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgCar,
                                              height: 18.v,
                                              width: 20.h,
                                              radius:
                                                  BorderRadius.circular(7.h),
                                              alignment: Alignment.bottomRight),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgDownload,
                                              height: 18.v,
                                              width: 20.h,
                                              radius:
                                                  BorderRadius.circular(7.h),
                                              alignment: Alignment.topLeft),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgDownload,
                                              height: 18.v,
                                              width: 20.h,
                                              radius:
                                                  BorderRadius.circular(7.h),
                                              alignment: Alignment.bottomLeft)
                                        ])),
                                CustomElevatedButton(
                                    height: 41.v,
                                    text: "lbl_choose".tr,
                                    margin: EdgeInsets.only(
                                        left: 3.h, top: 60.v, right: 3.h),
                                    buttonStyle:
                                        CustomButtonStyles.fillPrimaryTL8,
                                    buttonTextStyle:
                                        CustomTextStyles.titleSmallSemiBold,
                                    onTap: () {
                                      navigateToChooseFile();
                                    })
                              ])),
                      SizedBox(height: 22.v),
                      GestureDetector(
                          onTap: () {
                            navigateToScanURL();
                          },
                          child: Text("lbl_scan_by_url".tr,
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 8.v),
                      CustomTextFormField(
                          controller: controller.enteryoururlController,
                          hintText: "lbl_enter_your_url".tr,
                          hintStyle:
                              CustomTextStyles.bodyMediumOnErrorContainer,
                          textInputAction: TextInputAction.done,
                          suffix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(12.h, 15.v, 15.h, 16.v),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          suffixConstraints: BoxConstraints(maxHeight: 48.v),
                          contentPadding: EdgeInsets.only(
                              left: 13.h, top: 11.v, bottom: 11.v),
                          borderDecoration:
                              TextFormFieldStyleHelper.fillPrimaryContainerTL9),
                      SizedBox(height: 19.v),
                      Text("lbl_recent_results".tr,
                          style: theme.textTheme.titleMedium)
                    ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 46.h, right: 20.h, bottom: 28.v),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 16.v),
                      decoration: AppDecoration.fillPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder7),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgCamera,
                            height: 34.v,
                            width: 48.h),
                        SizedBox(height: 11.v),
                        Text("lbl_scan_files".tr,
                            style: CustomTextStyles.bodySmall10),
                        SizedBox(height: 2.v),
                        Opacity(
                            opacity: 0.7,
                            child: Text("lbl_20000".tr,
                                style: CustomTextStyles
                                    .bodySmallOnErrorContainer10))
                      ])),
                  Container(
                      margin: EdgeInsets.only(left: 40.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 22.h, vertical: 15.v),
                      decoration: AppDecoration.fillPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder7),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgSecurity1,
                            height: 36.adaptSize,
                            width: 36.adaptSize),
                        SizedBox(height: 10.v),
                        Text("lbl_secure_files".tr,
                            style: CustomTextStyles.bodySmall10),
                        SizedBox(height: 2.v),
                        Opacity(
                            opacity: 0.7,
                            child: Text("lbl_19000".tr,
                                style: CustomTextStyles
                                    .bodySmallOnErrorContainer10))
                      ])),
                  Container(
                      margin: EdgeInsets.only(left: 15.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 17.h, vertical: 15.v),
                      decoration: AppDecoration.fillPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder7),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgSecurity11,
                            height: 36.adaptSize,
                            width: 36.adaptSize),
                        SizedBox(height: 10.v),
                        Text("lbl_malware_files".tr,
                            style: CustomTextStyles.bodySmall10),
                        SizedBox(height: 2.v),
                        Opacity(
                            opacity: 0.7,
                            child: Text("lbl_1000".tr,
                                style: CustomTextStyles
                                    .bodySmallOnErrorContainer10))
                      ]))
                ])));
  }

  /// Navigates to the chooseFileScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the chooseFileScreen.
  navigateToChooseFile() {
    // requestPermission();
    // try {
    // FilePickerResult? result = await FilePicker.platform.pickFiles(
    //   type: FileType.any, // You can specify the type of files you want to allow
    // );

    //     if (result != null) {
    //       // Handle the selected file(s) here
    //       for (PlatformFile file in result.files) {
    //         print('File Name: ${file.name}');
    //         print('File Path: ${file.path}');
    //         print('File Size: ${file.size}');
    //       }
    //       Get.toNamed(
    //       AppRoutes.chooseFileScreen,
    //     );
    //     } else {
    //       // User canceled the file selection
    //       // AlertDi
    //     }
    //   } catch (e) {
    //     // Handle errors, if any
    //     print('Error picking file: $e');
    //   }
    // Get.toNamed(
    //   AppRoutes.chooseFileScreen,
    // );
  }
  Future<void> requestPermission() async {
    var statusStorage = await Permission.storage.status;
    var statusMedia = await Permission.mediaLibrary.status;

    if (!statusStorage.isGranted) {
      await Permission.storage.request();
    }

    if (!statusMedia.isGranted) {
      await Permission.mediaLibrary.request();
    }
  }

  /// Navigates to the scanningUrlScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the scanningUrlScreen.
  navigateToScanURL() {
    Get.toNamed(
      AppRoutes.scanningUrlScreen,
    );
  }

//   void showErrorDialog(BuildContext context, String errorMessage) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title: Text('Error'),
//         content: Text(errorMessage),
//         actions: <Widget>[
//           FlatButton(
//             child: Text('OK'),
//             onPressed: () {
//               Navigator.of(context).pop(); // Close the dialog
//             },
//           ),
//         ],
//       );
//     },
//   );
// }
}
