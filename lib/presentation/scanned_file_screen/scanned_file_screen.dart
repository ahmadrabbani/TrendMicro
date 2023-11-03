import 'package:trendmicrofrontend/presentation/drawer_menu_draweritem/drawer_menu_draweritem.dart';

import '../scanned_file_screen/widgets/userprofilerow_item_widget.dart';
import 'controller/scanned_file_controller.dart';
import 'models/userprofilerow_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class ScannedFileScreen extends GetWidget<ScannedFileController> {
     GlobalKey<ScaffoldState> _scaffoldKey =  GlobalKey<ScaffoldState>();

   ScannedFileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    
    return SafeArea(
      child: Scaffold(
        key:_scaffoldKey,
        drawer: DrawerMenuDraweritem(),
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
                onTap: () {
                  _scaffoldKey.currentState?.openDrawer();

                  print('AppbarImage tapped!');
                },
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
                      svgPath: ImageConstant.imgWhatsapp,
                      height: 82.v,
                      width: 70.h,
                    ),
                    SizedBox(height: 18.v),
                    SizedBox(
                      width: 141.h,
                      child: Text(
                        "msg_your_file_is_100".tr,
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
                              onTap: () => {
                                Get.toNamed(
                                  AppRoutes.homeScreen
                                )
                              },
                            ),
                          ),
                          Expanded(
                            child: CustomOutlinedButton(
                              text: "lbl_open_file".tr,
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
                      itemCount: controller.scannedFileModelObj.value
                          .userprofilerowItemList.value.length,
                      itemBuilder: (context, index) {
                        UserprofilerowItemModel model = controller
                            .scannedFileModelObj
                            .value
                            .userprofilerowItemList
                            .value[index];
                        return UserprofilerowItemWidget(
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
