import 'controller/detection_controller.dart';
import 'models/detection_model.dart';
import 'package:flutter/material.dart';
import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/widgets/custom_checkbox_button.dart';
import 'package:trendmicrofrontend/widgets/custom_text_form_field.dart';

class DetectionPage extends StatelessWidget {
  DetectionPage({Key? key})
      : super(
          key: key,
        );

  DetectionController controller =
      Get.put(DetectionController(DetectionModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                      SizedBox(height: 12.v),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 7.h),
                        decoration: AppDecoration.fillPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 9.v),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "msg_security_vendors".tr,
                                  style: CustomTextStyles.labelSmallMedium,
                                ),
                                Text(
                                  "msg_do_you_want_to_automate".tr,
                                  style: CustomTextStyles.labelSmallMedium,
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 1.h,
                                top: 6.v,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.h,
                                      vertical: 8.v,
                                    ),
                                    decoration: AppDecoration
                                        .outlineOnErrorContainer
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder4,
                                    ),
                                    child: Text(
                                      "lbl_bkav_pro".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.h,
                                      vertical: 7.v,
                                    ),
                                    decoration: AppDecoration
                                        .outlineOnErrorContainer
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder4,
                                    ),
                                    child: Row(
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgFrameRed600,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10.h),
                                          child: Text(
                                            "msg_w64_aidetectmalware".tr,
                                            style: theme.textTheme.bodySmall,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 1.h,
                                top: 7.v,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.h,
                                      vertical: 8.v,
                                    ),
                                    decoration: AppDecoration
                                        .outlineOnErrorContainer
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder4,
                                    ),
                                    child: Text(
                                      "msg_acronis_static".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  Obx(
                                    () => CustomCheckboxButton(
                                      text: "lbl_undetected".tr,
                                      value: controller.valueFour.value,
                                      padding: EdgeInsets.fromLTRB(
                                          10.h, 8.v, 30.h, 8.v),
                                      onChange: (value) {
                                        controller.valueFour.value = value;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 1.h,
                                top: 7.v,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.h,
                                      vertical: 8.v,
                                    ),
                                    decoration: AppDecoration
                                        .outlineOnErrorContainer
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder4,
                                    ),
                                    child: Text(
                                      "lbl_ahnlab_v3".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  Obx(
                                    () => CustomCheckboxButton(
                                      text: "lbl_undetected".tr,
                                      value: controller.valuefourone.value,
                                      padding: EdgeInsets.fromLTRB(
                                          10.h, 8.v, 30.h, 8.v),
                                      onChange: (value) {
                                        controller.valuefourone.value = value;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 1.h,
                                top: 7.v,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.h,
                                      vertical: 8.v,
                                    ),
                                    decoration: AppDecoration
                                        .outlineOnErrorContainer
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder4,
                                    ),
                                    child: Text(
                                      "lbl_alibaba".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  Obx(
                                    () => CustomCheckboxButton(
                                      text: "lbl_undetected".tr,
                                      value: controller.valuefourtwo.value,
                                      padding: EdgeInsets.fromLTRB(
                                          10.h, 8.v, 30.h, 8.v),
                                      onChange: (value) {
                                        controller.valuefourtwo.value = value;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 1.h,
                                top: 7.v,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.h,
                                      vertical: 8.v,
                                    ),
                                    decoration: AppDecoration
                                        .outlineOnErrorContainer
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder4,
                                    ),
                                    child: Text(
                                      "lbl_alyac".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  Obx(
                                    () => CustomCheckboxButton(
                                      text: "lbl_undetected".tr,
                                      value: controller.valuefourthree.value,
                                      padding: EdgeInsets.fromLTRB(
                                          10.h, 8.v, 30.h, 8.v),
                                      onChange: (value) {
                                        controller.valuefourthree.value = value;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 1.h,
                                top: 7.v,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.h,
                                      vertical: 7.v,
                                    ),
                                    decoration: AppDecoration
                                        .outlineOnErrorContainer
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder4,
                                    ),
                                    child: Text(
                                      "lbl_antiy_avl".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  Obx(
                                    () => CustomCheckboxButton(
                                      text: "lbl_undetected".tr,
                                      value: controller.valuefourfour.value,
                                      padding: EdgeInsets.fromLTRB(
                                          10.h, 8.v, 30.h, 8.v),
                                      onChange: (value) {
                                        controller.valuefourfour.value = value;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 1.h,
                                top: 7.v,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: CustomTextFormField(
                                      controller: controller.arcabitController,
                                      margin: EdgeInsets.only(right: 4.h),
                                      hintText: "lbl_arcabit".tr,
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 10.h,
                                        vertical: 8.v,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Obx(
                                      () => CustomCheckboxButton(
                                        text: "lbl_undetected".tr,
                                        value: controller.valuefourfive.value,
                                        margin: EdgeInsets.only(left: 4.h),
                                        padding: EdgeInsets.fromLTRB(
                                            10.h, 8.v, 30.h, 8.v),
                                        onChange: (value) {
                                          controller.valuefourfive.value =
                                              value;
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 1.h,
                                top: 7.v,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.h,
                                      vertical: 8.v,
                                    ),
                                    decoration: AppDecoration
                                        .outlineOnErrorContainer
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder4,
                                    ),
                                    child: Text(
                                      "lbl_avast".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  Obx(
                                    () => CustomCheckboxButton(
                                      text: "lbl_undetected".tr,
                                      value: controller.valuefoursix.value,
                                      padding: EdgeInsets.fromLTRB(
                                          10.h, 8.v, 30.h, 8.v),
                                      onChange: (value) {
                                        controller.valuefoursix.value = value;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 1.h,
                                top: 7.v,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.h,
                                      vertical: 8.v,
                                    ),
                                    decoration: AppDecoration
                                        .outlineOnErrorContainer
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder4,
                                    ),
                                    child: Text(
                                      "lbl_avg".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  Obx(
                                    () => CustomCheckboxButton(
                                      text: "lbl_undetected".tr,
                                      value: controller.valuefourseven.value,
                                      padding: EdgeInsets.fromLTRB(
                                          10.h, 8.v, 30.h, 8.v),
                                      onChange: (value) {
                                        controller.valuefourseven.value = value;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 1.h,
                                top: 7.v,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.h,
                                      vertical: 8.v,
                                    ),
                                    decoration: AppDecoration
                                        .outlineOnErrorContainer
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder4,
                                    ),
                                    child: Text(
                                      "msg_avira_no_cloud".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  Obx(
                                    () => CustomCheckboxButton(
                                      text: "lbl_undetected".tr,
                                      value: controller.valuefoureight.value,
                                      padding: EdgeInsets.fromLTRB(
                                          10.h, 8.v, 30.h, 8.v),
                                      onChange: (value) {
                                        controller.valuefoureight.value = value;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 1.h,
                                top: 7.v,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: CustomTextFormField(
                                      controller: controller.baiduController,
                                      margin: EdgeInsets.only(right: 4.h),
                                      hintText: "lbl_baidu".tr,
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 10.h,
                                        vertical: 8.v,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Obx(
                                      () => CustomCheckboxButton(
                                        text: "lbl_undetected".tr,
                                        value: controller.valuefournine.value,
                                        margin: EdgeInsets.only(left: 4.h),
                                        padding: EdgeInsets.fromLTRB(
                                            10.h, 8.v, 30.h, 8.v),
                                        onChange: (value) {
                                          controller.valuefournine.value =
                                              value;
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 1.h,
                                top: 7.v,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.h,
                                      vertical: 8.v,
                                    ),
                                    decoration: AppDecoration
                                        .outlineOnErrorContainer
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder4,
                                    ),
                                    child: Text(
                                      "lbl_bitdefender".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  Obx(
                                    () => CustomCheckboxButton(
                                      text: "lbl_undetected".tr,
                                      value: controller.valuefourten.value,
                                      padding: EdgeInsets.fromLTRB(
                                          10.h, 8.v, 30.h, 8.v),
                                      onChange: (value) {
                                        controller.valuefourten.value = value;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 1.h,
                                top: 7.v,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: CustomTextFormField(
                                      controller:
                                          controller.bitdefenderthetController,
                                      margin: EdgeInsets.only(right: 4.h),
                                      hintText: "msg_bitdefendertheta".tr,
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 10.h,
                                        vertical: 8.v,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Obx(
                                      () => CustomCheckboxButton(
                                        text: "lbl_undetected".tr,
                                        value: controller.valuefour.value,
                                        margin: EdgeInsets.only(left: 4.h),
                                        padding: EdgeInsets.fromLTRB(
                                            10.h, 8.v, 30.h, 8.v),
                                        onChange: (value) {
                                          controller.valuefour.value = value;
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 1.h,
                                top: 7.v,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: CustomTextFormField(
                                      controller: controller.clamavController,
                                      margin: EdgeInsets.only(right: 4.h),
                                      hintText: "lbl_clamav".tr,
                                      textInputAction: TextInputAction.done,
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 10.h,
                                        vertical: 8.v,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Obx(
                                      () => CustomCheckboxButton(
                                        text: "lbl_undetected".tr,
                                        value: controller.valuefour1.value,
                                        margin: EdgeInsets.only(left: 4.h),
                                        padding: EdgeInsets.fromLTRB(
                                            10.h, 8.v, 30.h, 8.v),
                                        onChange: (value) {
                                          controller.valuefour1.value = value;
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 1.h,
                                top: 7.v,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.h,
                                      vertical: 7.v,
                                    ),
                                    decoration: AppDecoration
                                        .outlineOnErrorContainer
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder4,
                                    ),
                                    child: Text(
                                      "lbl_cmc".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  Obx(
                                    () => CustomCheckboxButton(
                                      text: "lbl_undetected".tr,
                                      value: controller.valuefour2.value,
                                      padding: EdgeInsets.fromLTRB(
                                          10.h, 7.v, 30.h, 7.v),
                                      onChange: (value) {
                                        controller.valuefour2.value = value;
                                      },
                                    ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
