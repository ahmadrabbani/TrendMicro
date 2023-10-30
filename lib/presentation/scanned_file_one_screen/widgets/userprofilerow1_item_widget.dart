import '../controller/scanned_file_one_controller.dart';
import '../models/userprofilerow1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trendmicrofrontend/core/app_export.dart';

// ignore: must_be_immutable
class Userprofilerow1ItemWidget extends StatelessWidget {
  Userprofilerow1ItemWidget(
    this.userprofilerow1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofilerow1ItemModel userprofilerow1ItemModelObj;

  var controller = Get.find<ScannedFileOneController>();

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
                userprofilerow1ItemModelObj.passwordText!.value,
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
                userprofilerow1ItemModelObj.pageNumberText!.value,
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
