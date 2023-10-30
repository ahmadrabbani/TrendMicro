import '../controller/choose_file_controller.dart';
import '../models/userdocument_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trendmicrofrontend/core/app_export.dart';

// ignore: must_be_immutable
class UserdocumentItemWidget extends StatelessWidget {
  UserdocumentItemWidget(
    this.userdocumentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserdocumentItemModel userdocumentItemModelObj;

  var controller = Get.find<ChooseFileController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgCamera,
            height: 22.v,
            width: 35.h,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 5.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 1.v,
            ),
            child: Column(
              children: [
                Text(
                  "msg_your_document_folder".tr,
                  style: theme.textTheme.labelMedium,
                ),
                SizedBox(height: 1.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
          CustomImageView(
            svgPath: ImageConstant.imgShare,
            height: 15.adaptSize,
            width: 15.adaptSize,
            margin: EdgeInsets.only(
              top: 8.v,
              bottom: 9.v,
            ),
          ),
          CustomImageView(
            svgPath: ImageConstant.imgGroup1127,
            height: 12.v,
            width: 3.h,
            margin: EdgeInsets.fromLTRB(19.h, 10.v, 5.h, 10.v),
          ),
        ],
      ),
    );
  }
}
