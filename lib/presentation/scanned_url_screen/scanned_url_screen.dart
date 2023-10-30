import '../scanned_url_screen/widgets/openurl_item_widget.dart';
import 'controller/scanned_url_controller.dart';
import 'models/openurl_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/widgets/custom_outlined_button.dart';

class ScannedUrlScreen extends GetWidget<ScannedUrlController> {
  const ScannedUrlScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 27.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 7.v),
                      CustomImageView(
                          svgPath: ImageConstant.imgMenu,
                          height: 20.v,
                          width: 28.h),
                      SizedBox(height: 27.v),
                      Text("lbl_scanned_url2".tr,
                          style: theme.textTheme.titleLarge),
                      SizedBox(height: 12.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 19.h, vertical: 24.v),
                          decoration: AppDecoration.fillPrimaryContainer
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 9.v),
                                CustomImageView(
                                    svgPath: ImageConstant.imgClock,
                                    height: 82.v,
                                    width: 70.h),
                                SizedBox(height: 18.v),
                                SizedBox(
                                    width: 168.h,
                                    child: Text("msg_your_url_is_not_secure".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodyLarge!
                                            .copyWith(height: 1.25))),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 1.h, top: 52.v),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: CustomOutlinedButton(
                                                  text: "lbl_choose_another".tr,
                                                  margin: EdgeInsets.only(
                                                      right: 8.h),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .outlineGray)),
                                          Expanded(
                                              child: CustomOutlinedButton(
                                                  text: "lbl_remove_threads".tr,
                                                  margin: EdgeInsets.only(
                                                      left: 8.h),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .outlineRed,
                                                  onTap: () {
                                                    navigateToSummery();
                                                  }))
                                        ]))
                              ])),
                      SizedBox(height: 27.v),
                      Text("msg_recent_scan_urls".tr,
                          style: CustomTextStyles.titleLargeMedium),
                      SizedBox(height: 11.v),
                      Expanded(
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: 12.v);
                              },
                              itemCount: controller.scannedUrlModelObj.value
                                  .openurlItemList.value.length,
                              itemBuilder: (context, index) {
                                OpenurlItemModel model = controller
                                    .scannedUrlModelObj
                                    .value
                                    .openurlItemList
                                    .value[index];
                                return OpenurlItemWidget(model);
                              })))
                    ]))));
  }

  /// Navigates to the summaryTabContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the summaryTabContainerScreen.
  navigateToSummery() {
    Get.toNamed(
      AppRoutes.summaryTabContainerScreen,
    );
  }
}
