import '../controller/choose_file_controller.dart';
import '../models/gridfilename_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trendmicrofrontend/core/app_export.dart';

// ignore: must_be_immutable
class GridfilenameItemWidget extends StatelessWidget {
  GridfilenameItemWidget(
    this.gridfilenameItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  GridfilenameItemModel gridfilenameItemModelObj;

  var controller = Get.find<ChooseFileController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 5.v),
          CustomImageView(
            imagePath: ImageConstant.imgPdf3,
            height: 32.adaptSize,
            width: 32.adaptSize,
          ),
          SizedBox(height: 9.v),
          Text(
            "lbl_pdf_file".tr,
            style: theme.textTheme.labelLarge,
          ),
          Opacity(
            opacity: 0.7,
            child: Text(
              "lbl_200_kb".tr,
              style: CustomTextStyles.bodySmallOnErrorContainerLight10,
            ),
          ),
        ],
      ),
    );
  }
}
