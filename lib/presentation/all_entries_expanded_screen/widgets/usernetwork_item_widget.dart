import '../controller/all_entries_expanded_controller.dart';
import '../models/usernetwork_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trendmicrofrontend/core/app_export.dart';

// ignore: must_be_immutable
class UsernetworkItemWidget extends StatelessWidget {
  UsernetworkItemWidget(
    this.usernetworkItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UsernetworkItemModel usernetworkItemModelObj;

  var controller = Get.find<AllEntriesExpandedController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgArrowright,
            height: 12.v,
            width: 7.h,
            margin: EdgeInsets.only(
              top: 16.v,
              bottom: 10.v,
            ),
          ),
          CustomImageView(
            svgPath: ImageConstant.imgFrameOnprimarycontainer,
            height: 28.adaptSize,
            width: 28.adaptSize,
            margin: EdgeInsets.only(
              left: 11.h,
              top: 8.v,
              bottom: 2.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    usernetworkItemModelObj.userIP!.value,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                SizedBox(height: 2.v),
                Opacity(
                  opacity: 0.7,
                  child: Obx(
                    () => Text(
                      usernetworkItemModelObj.userURL!.value,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallOnErrorContainerLight,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            svgPath: ImageConstant.imgGroup1160,
            height: 16.v,
            width: 4.h,
            margin: EdgeInsets.only(
              top: 11.v,
              right: 3.h,
              bottom: 10.v,
            ),
          ),
        ],
      ),
    );
  }
}
