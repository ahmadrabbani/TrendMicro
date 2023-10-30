import '../scanned_file_one_screen/widgets/userprofilerow1_item_widget.dart';
import 'controller/scanned_file_one_controller.dart';
import 'models/userprofilerow1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class ScannedFileOneScreen extends GetWidget<ScannedFileOneController> {
  const ScannedFileOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 34.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgMenu,
                height: 20.v,
                width: 28.h,
              ),
              SizedBox(height: 26.v),
              Text(
                "lbl_scanned_file".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 13.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 19.h,
                  vertical: 24.v,
                ),
                decoration: AppDecoration.fillPrimaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 9.v),
                    CustomImageView(
                      svgPath: ImageConstant.imgClock,
                      height: 82.v,
                      width: 70.h,
                    ),
                    SizedBox(height: 18.v),
                    SizedBox(
                      width: 169.h,
                      child: Text(
                        "msg_your_file_is_not".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyLarge!.copyWith(
                          height: 1.25,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 1.h,
                        top: 52.v,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: CustomOutlinedButton(
                              text: "lbl_choose_another".tr,
                              margin: EdgeInsets.only(right: 8.h),
                              buttonStyle: CustomButtonStyles.outlineGray,
                            ),
                          ),
                          Expanded(
                            child: CustomOutlinedButton(
                              text: "lbl_remove_threads".tr,
                              margin: EdgeInsets.only(left: 8.h),
                              buttonStyle: CustomButtonStyles.outlineRed,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 26.v),
              Text(
                "lbl_scan_results".tr,
                style: CustomTextStyles.titleLargeMedium,
              ),
              SizedBox(height: 13.v),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 21.h,
                    vertical: 18.v,
                  ),
                  decoration: AppDecoration.fillPrimaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Obx(
                    () => ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return SizedBox(
                          height: 14.v,
                        );
                      },
                      itemCount: controller.scannedFileOneModelObj.value
                          .userprofilerow1ItemList.value.length,
                      itemBuilder: (context, index) {
                        Userprofilerow1ItemModel model = controller
                            .scannedFileOneModelObj
                            .value
                            .userprofilerow1ItemList
                            .value[index];
                        return Userprofilerow1ItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
