import 'controller/summary_controller.dart';
import 'models/summary_model.dart';
import 'package:flutter/material.dart';
import 'package:trendmicrofrontend/core/app_export.dart';

class SummaryPage extends StatelessWidget {
  SummaryPage({Key? key})
      : super(
          key: key,
        );

  SummaryController controller = Get.put(SummaryController(SummaryModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 26.h,
                    top: 19.v,
                    right: 14.h,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 1.h),
                        decoration: AppDecoration.fillPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 63.v,
                              child: VerticalDivider(
                                width: 3.h,
                                thickness: 3.v,
                                color: theme.colorScheme.primary,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 289.h,
                                margin: EdgeInsets.only(
                                  left: 10.h,
                                  top: 9.v,
                                  bottom: 10.v,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "msg_join_the_vt_community2".tr,
                                        style: CustomTextStyles
                                            .labelMediumPrimary
                                            .copyWith(
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " ",
                                      ),
                                      TextSpan(
                                        text: "msg_and_enjoy_additional".tr,
                                        style: theme.textTheme.labelMedium,
                                      ),
                                      TextSpan(
                                        text: "msg_automate_checks".tr,
                                        style: CustomTextStyles
                                            .labelMediumPrimary
                                            .copyWith(
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 9.v),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 19.h,
                          vertical: 14.v,
                        ),
                        decoration: AppDecoration.fillPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 5.v),
                            CustomImageView(
                              svgPath: ImageConstant.imgGroup1147,
                              height: 26.v,
                              width: 290.h,
                            ),
                            SizedBox(height: 19.v),
                            Opacity(
                              opacity: 0.6,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgClose,
                                height: 25.adaptSize,
                                width: 25.adaptSize,
                              ),
                            ),
                            Container(
                              width: 216.h,
                              margin: EdgeInsets.only(
                                left: 40.h,
                                top: 4.v,
                                right: 40.h,
                              ),
                              child: Text(
                                "msg_1_security_vendor".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style:
                                    CustomTextStyles.labelLargeRed600.copyWith(
                                  height: 1.17,
                                ),
                              ),
                            ),
                            SizedBox(height: 17.v),
                            Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: theme.colorScheme.onPrimaryContainer,
                                  width: 4.h,
                                ),
                                borderRadius: BorderRadiusStyle.circleBorder34,
                              ),
                              child: Container(
                                height: 68.adaptSize,
                                width: 68.adaptSize,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 3.h,
                                  vertical: 2.v,
                                ),
                                decoration: AppDecoration
                                    .outlineOnPrimaryContainer1
                                    .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder34,
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgEllipse10,
                                      height: 31.adaptSize,
                                      width: 31.adaptSize,
                                      alignment: Alignment.topRight,
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 1.h),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 17.h,
                                          vertical: 10.v,
                                        ),
                                        decoration:
                                            AppDecoration.white.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder30,
                                        ),
                                        child: SizedBox(
                                          width: 26.h,
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "lbl_25".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumRed600,
                                                ),
                                                TextSpan(
                                                  text: "lbl_100".tr,
                                                  style: CustomTextStyles
                                                      .labelLargeOnError,
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 5.h,
                                top: 23.v,
                                right: 4.h,
                              ),
                              child: SizedBox(
                                height: 17.v,
                                width: 288.h,
                                child: ClipRRect(
                                  child: LinearProgressIndicator(
                                    value: 0,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 13.v),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  svgPath:
                                      ImageConstant.imgCloseOnerrorcontainer,
                                  height: 10.adaptSize,
                                  width: 10.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 9.h),
                                  child: Text(
                                    "lbl_community_score".tr,
                                    style: CustomTextStyles.bodySmall10,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgVector19,
                                  height: 4.v,
                                  width: 7.h,
                                ),
                              ],
                            ),
                            SizedBox(height: 54.v),
                            SizedBox(
                              width: 297.h,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "msg_28aa499a50dae0e2".tr,
                                      style: CustomTextStyles.bodySmall12,
                                    ),
                                    TextSpan(
                                      text: "msg_nahidh_tracking_exe".tr,
                                      style: CustomTextStyles.bodySmall12,
                                    ),
                                    TextSpan(
                                      text: "msg_2023_10_27_04_11_19".tr,
                                      style: CustomTextStyles.bodySmall12,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 29.v),
                            CustomImageView(
                              imagePath: ImageConstant.img512withtext0145x45,
                              height: 45.adaptSize,
                              width: 45.adaptSize,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
