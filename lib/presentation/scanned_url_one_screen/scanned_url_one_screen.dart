import '../scanned_url_one_screen/widgets/scanned_url_one_item_widget.dart';
import 'controller/scanned_url_one_controller.dart';
import 'models/scanned_url_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class ScannedUrlOneScreen extends GetWidget<ScannedUrlOneController> {
  const ScannedUrlOneScreen({Key? key})
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
            vertical: 27.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 7.v),
              CustomImageView(
                svgPath: ImageConstant.imgMenu,
                height: 20.v,
                width: 28.h,
              ),
              SizedBox(height: 27.v),
              Text(
                "lbl_scanned_url".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 12.v),
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
                      svgPath: ImageConstant.imgWhatsapp,
                      height: 82.v,
                      width: 70.h,
                    ),
                    SizedBox(height: 18.v),
                    SizedBox(
                      width: 141.h,
                      child: Text(
                        "msg_your_url_is_100".tr,
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
                        top: 50.v,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: CustomOutlinedButton(
                              text: "lbl_scan_another".tr,
                              margin: EdgeInsets.only(right: 8.h),
                            ),
                          ),
                          Expanded(
                            child: CustomOutlinedButton(
                              text: "lbl_open_url".tr,
                              margin: EdgeInsets.only(left: 8.h),
                              buttonStyle: CustomButtonStyles.outlinePrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 27.v),
              Text(
                "msg_recent_scan_urls".tr,
                style: CustomTextStyles.titleLargeMedium,
              ),
              SizedBox(height: 11.v),
              Expanded(
                child: Obx(
                  () => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        height: 12.v,
                      );
                    },
                    itemCount: controller.scannedUrlOneModelObj.value
                        .scannedUrlOneItemList.value.length,
                    itemBuilder: (context, index) {
                      ScannedUrlOneItemModel model = controller
                          .scannedUrlOneModelObj
                          .value
                          .scannedUrlOneItemList
                          .value[index];
                      return ScannedUrlOneItemWidget(
                        model,
                      );
                    },
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
