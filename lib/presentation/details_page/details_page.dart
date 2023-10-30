import 'controller/details_controller.dart';
import 'models/details_model.dart';
import 'package:flutter/material.dart';
import 'package:trendmicrofrontend/core/app_export.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({Key? key})
      : super(
          key: key,
        );

  DetailsController controller = Get.put(DetailsController(DetailsModel().obs));

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
                    left: 20.h,
                    top: 19.v,
                    right: 20.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
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
                                  left: 11.h,
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
                      SizedBox(height: 16.v),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgFrameGray300,
                            height: 14.adaptSize,
                            width: 14.adaptSize,
                            margin: EdgeInsets.only(
                              top: 2.v,
                              bottom: 4.v,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 9.h),
                            child: Text(
                              "msg_basic_properties".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 7.v),
                      Container(
                        padding: EdgeInsets.all(8.h),
                        decoration: AppDecoration.fillPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.h,
                                vertical: 7.v,
                              ),
                              decoration: AppDecoration.outlineOnErrorContainer
                                  .copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "msg_md5717bf6914def".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            SizedBox(height: 10.v),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.h,
                                vertical: 7.v,
                              ),
                              decoration: AppDecoration.outlineOnErrorContainer
                                  .copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "msg_sha_1fafc4f7f34".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            SizedBox(height: 10.v),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.h,
                                vertical: 7.v,
                              ),
                              decoration: AppDecoration.outlineOnErrorContainer
                                  .copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "msg_sha_1fafc4f7f34".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            SizedBox(height: 10.v),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.h,
                                vertical: 7.v,
                              ),
                              decoration: AppDecoration.outlineOnErrorContainer
                                  .copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "msg_sha_1fafc4f7f34".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            SizedBox(height: 10.v),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.h,
                                vertical: 7.v,
                              ),
                              decoration: AppDecoration.outlineOnErrorContainer
                                  .copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "msg_sha_1fafc4f7f34".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            SizedBox(height: 10.v),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.h,
                                vertical: 7.v,
                              ),
                              decoration: AppDecoration.outlineOnErrorContainer
                                  .copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "msg_sha_1fafc4f7f34".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            SizedBox(height: 10.v),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.h,
                                vertical: 7.v,
                              ),
                              decoration: AppDecoration.outlineOnErrorContainer
                                  .copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "msg_sha_1fafc4f7f34".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            SizedBox(height: 10.v),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.h,
                                vertical: 7.v,
                              ),
                              decoration: AppDecoration.outlineOnErrorContainer
                                  .copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "msg_sha_1fafc4f7f34".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            SizedBox(height: 3.v),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.v),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgFrameGray300,
                            height: 14.adaptSize,
                            width: 14.adaptSize,
                            margin: EdgeInsets.only(
                              top: 2.v,
                              bottom: 4.v,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 9.h),
                            child: Text(
                              "lbl_history".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 7.v),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        color: theme.colorScheme.primaryContainer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Container(
                          height: 329.v,
                          width: 335.h,
                          padding: EdgeInsets.all(8.h),
                          decoration:
                              AppDecoration.fillPrimaryContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  margin: EdgeInsets.only(right: 3.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10.h,
                                    vertical: 3.v,
                                  ),
                                  decoration: AppDecoration
                                      .outlineOnErrorContainer
                                      .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder4,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 3.v),
                                      SizedBox(
                                        width: 96.h,
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "lbl_creation_time".tr,
                                                style: theme
                                                    .textTheme.bodySmall!
                                                    .copyWith(
                                                  decoration:
                                                      TextDecoration.underline,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "msg_2023_10_08_05_42_17"
                                                    .tr,
                                                style:
                                                    theme.textTheme.bodySmall,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 3.h),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        width: 316.h,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 10.h,
                                          vertical: 3.v,
                                        ),
                                        decoration: AppDecoration
                                            .outlineOnErrorContainer
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(height: 3.v),
                                            SizedBox(
                                              width: 96.h,
                                              child: RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: "lbl_creation_time"
                                                          .tr,
                                                      style: theme
                                                          .textTheme.bodySmall!
                                                          .copyWith(
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          "msg_2023_10_08_05_42_17"
                                                              .tr,
                                                      style: theme
                                                          .textTheme.bodySmall,
                                                    ),
                                                  ],
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 10.v),
                                      Container(
                                        width: 316.h,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 10.h,
                                          vertical: 3.v,
                                        ),
                                        decoration: AppDecoration
                                            .outlineOnErrorContainer
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(height: 3.v),
                                            SizedBox(
                                              width: 96.h,
                                              child: RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: "lbl_creation_time"
                                                          .tr,
                                                      style: theme
                                                          .textTheme.bodySmall!
                                                          .copyWith(
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          "msg_2023_10_08_05_42_17"
                                                              .tr,
                                                      style: theme
                                                          .textTheme.bodySmall,
                                                    ),
                                                  ],
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 10.v),
                                      Container(
                                        width: 316.h,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 10.h,
                                          vertical: 3.v,
                                        ),
                                        decoration: AppDecoration
                                            .outlineOnErrorContainer
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(height: 3.v),
                                            SizedBox(
                                              width: 96.h,
                                              child: RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: "lbl_creation_time"
                                                          .tr,
                                                      style: theme
                                                          .textTheme.bodySmall!
                                                          .copyWith(
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          "msg_2023_10_08_05_42_17"
                                                              .tr,
                                                      style: theme
                                                          .textTheme.bodySmall,
                                                    ),
                                                  ],
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 10.v),
                                      Container(
                                        width: 316.h,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 10.h,
                                          vertical: 5.v,
                                        ),
                                        decoration: AppDecoration
                                            .outlineOnErrorContainer
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4,
                                        ),
                                        child: SizedBox(
                                          width: 96.h,
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "lbl_creation_time".tr,
                                                  style: theme
                                                      .textTheme.bodySmall!
                                                      .copyWith(
                                                    decoration: TextDecoration
                                                        .underline,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "msg_2023_10_08_05_42_17"
                                                          .tr,
                                                  style:
                                                      theme.textTheme.bodySmall,
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
                              ),
                            ],
                          ),
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
