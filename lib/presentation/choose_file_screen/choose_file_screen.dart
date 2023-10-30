import '../choose_file_screen/widgets/gridfilename_item_widget.dart';
import '../choose_file_screen/widgets/userdocument_item_widget.dart';
import 'controller/choose_file_controller.dart';
import 'models/gridfilename_item_model.dart';
import 'models/userdocument_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/widgets/app_bar/appbar_image.dart';
import 'package:trendmicrofrontend/widgets/app_bar/custom_app_bar.dart';
import 'package:trendmicrofrontend/widgets/custom_elevated_button.dart';

class ChooseFileScreen extends GetWidget<ChooseFileController> {
  const ChooseFileScreen({Key? key}) : super(key: key);

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
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 8.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("lbl_choose_file".tr,
                              style: theme.textTheme.titleLarge)),
                      Expanded(
                          child: SizedBox(
                              width: double.maxFinite,
                              child: Container(
                                  margin:
                                      EdgeInsets.only(top: 13.v, right: 1.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 9.h, vertical: 12.v),
                                  decoration: AppDecoration.fillPrimaryContainer
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder7),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Expanded(
                                            child: Obx(() => GridView.builder(
                                                shrinkWrap: true,
                                                gridDelegate:
                                                    SliverGridDelegateWithFixedCrossAxisCount(
                                                        mainAxisExtent: 92.v,
                                                        crossAxisCount: 3,
                                                        mainAxisSpacing: 18.h,
                                                        crossAxisSpacing: 18.h),
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                itemCount: controller
                                                    .chooseFileModelObj
                                                    .value
                                                    .gridfilenameItemList
                                                    .value
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  GridfilenameItemModel model =
                                                      controller
                                                          .chooseFileModelObj
                                                          .value
                                                          .gridfilenameItemList
                                                          .value[index];
                                                  return GridfilenameItemWidget(
                                                      model);
                                                }))),
                                        SizedBox(height: 29.v),
                                        CustomElevatedButton(
                                            height: 41.v,
                                            width: 174.h,
                                            text: "lbl_start_scanning".tr,
                                            buttonStyle: CustomButtonStyles
                                                .fillPrimaryTL8,
                                            buttonTextStyle: CustomTextStyles
                                                .titleSmallSemiBold,
                                            onTap: () {
                                              navigateToScanFile();
                                            }),
                                        SizedBox(height: 9.v)
                                      ])))),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h, top: 20.v),
                          child: Text("lbl_recent_files".tr,
                              style: theme.textTheme.titleMedium)),
                      Expanded(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 1.h, top: 8.v, right: 1.h),
                              child: Obx(() => ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(height: 8.v);
                                  },
                                  itemCount: controller.chooseFileModelObj.value
                                      .userdocumentItemList.value.length,
                                  itemBuilder: (context, index) {
                                    UserdocumentItemModel model = controller
                                        .chooseFileModelObj
                                        .value
                                        .userdocumentItemList
                                        .value[index];
                                    return UserdocumentItemWidget(model);
                                  }))))
                    ]))));
  }

  /// Navigates to the scanningYourFileScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the scanningYourFileScreen.
  navigateToScanFile() {
    Get.toNamed(
      AppRoutes.scanningYourFileScreen,
    );
  }
}
