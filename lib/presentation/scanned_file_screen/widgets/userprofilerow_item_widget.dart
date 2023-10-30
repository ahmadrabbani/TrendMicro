import '../controller/scanned_file_controller.dart';
import '../models/userprofilerow_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trendmicrofrontend/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilerowItemWidget extends StatelessWidget {
  UserprofilerowItemWidget(
    this.userprofilerowItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilerowItemModel userprofilerowItemModelObj;

  var controller = Get.find<ScannedFileController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Obx(
              () => Text(
                userprofilerowItemModelObj.passwordText!.value,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 1.h,
              bottom: 2.v,
            ),
            child: Obx(
              () => Text(
                userprofilerowItemModelObj.pageNumberText!.value,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
