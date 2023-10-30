import '../controller/scanned_url_one_controller.dart';
import '../models/scanned_url_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trendmicrofrontend/core/app_export.dart';

// ignore: must_be_immutable
class ScannedUrlOneItemWidget extends StatelessWidget {
  ScannedUrlOneItemWidget(
    this.scannedUrlOneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ScannedUrlOneItemModel scannedUrlOneItemModelObj;

  var controller = Get.find<ScannedUrlOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgFramePrimary,
            height: 31.v,
            width: 33.h,
            margin: EdgeInsets.only(top: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_www_yoururlname_com".tr,
                  style: theme.textTheme.labelMedium,
                ),
                Row(
                  children: [
                    Opacity(
                      opacity: 0.7,
                      child: Text(
                        "lbl_10_20_2023".tr,
                        style:
                            CustomTextStyles.bodySmallOnErrorContainerLight10,
                      ),
                    ),
                    Opacity(
                      opacity: 0.7,
                      child: Padding(
                        padding: EdgeInsets.only(left: 21.h),
                        child: Text(
                          "lbl_10_12_20".tr,
                          style:
                              CustomTextStyles.bodySmallOnErrorContainerLight10,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(
              top: 6.v,
              bottom: 7.v,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.blue.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_open_url".tr,
              style: theme.textTheme.labelSmall,
            ),
          ),
        ],
      ),
    );
  }
}
