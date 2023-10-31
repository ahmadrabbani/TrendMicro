import 'controller/drawer_menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/widgets/custom_text_form_field.dart';

class DrawerMenuDraweritem extends StatelessWidget {
  DrawerMenuDraweritem(
   {
    Key? key,
  }) : super(
          key: key,
        );

  // DrawerMenuController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Drawer(
      child: Container(
        width: 288.h,
        padding: EdgeInsets.symmetric(vertical: 21.v),
        decoration: AppDecoration.fillErrorContainer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 21.h,
                top: 23.v,
              ),
              child: Text(
                "lbl_m_vasaye".tr,
                style: CustomTextStyles.titleLarge20,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 21.h,
                top: 1.v,
              ),
              child: Text(
                "msg_m_vasaye3875_gmail_com".tr,
                style: CustomTextStyles.bodyMediumLight,
              ),
            ),
            SizedBox(height: 21.v),
            Opacity(
              opacity: 0.4,
              child: Divider(
                color: theme.colorScheme.onErrorContainer.withOpacity(0.49),
              ),
            ),
            CustomTextFormField(
              // controller: controller.scanvalueoneController,
              margin: EdgeInsets.only(
                left: 20.h,
                top: 39.v,
                right: 16.h,
              ),
              hintText: "lbl_scan".tr,
              hintStyle: CustomTextStyles.titleMediumSemiBold,
              textInputAction: TextInputAction.done,
              alignment: Alignment.center,
              prefix: Container(
                margin: EdgeInsets.fromLTRB(12.h, 12.v, 20.h, 12.v),
                child: CustomImageView(
                  svgPath: ImageConstant.imgFrame,
                ),
              ),
              prefixConstraints: BoxConstraints(
                maxHeight: 51.v,
              ),
              contentPadding: EdgeInsets.only(
                top: 13.v,
                right: 30.h,
                bottom: 13.v,
              ),
              borderDecoration: TextFormFieldStyleHelper.fillPrimary,
              fillColor: theme.colorScheme.primary,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 30.h,
                top: 39.v,
                right: 51.h,
              ),
              child: Row(
                children: [
                  OutlinedButton(onPressed: ()=> {
                      Get.toNamed(
                        AppRoutes.allEntriesScreen,
                      )
                    }, 
                    
                    child:Row(
                      children: [
                        CustomImageView(
                      svgPath: ImageConstant.imgSettings,
                      height: 26.v,
                      width: 24.h,
                      margin: EdgeInsets.only(bottom: 1.v),
                      
                    ),
                    Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 3.v,
                    ),
                    child: Text(
                      "msg_passwords_manager".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                      ]
                      
                    )
                      
                    
                  
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 30.h,
                top: 50.v,
              ),
              child: Row(
                children: [
                  OutlinedButton(onPressed: ()=>{
                    
                  }, 
                  child:Row(children: [
                    CustomImageView(
                    svgPath: ImageConstant.imgTicket,
                    height: 26.v,
                    width: 24.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_secure_drive".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  ],))
                  
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 30.h,
                top: 52.v,
              ),
              child: Row(
                children: [
                  OutlinedButton(onPressed: (() => {

                  }), child: Row(children: [
                    CustomImageView(
                    svgPath: ImageConstant.imgGroup1143,
                    height: 26.adaptSize,
                    width: 26.adaptSize,
                    margin: EdgeInsets.only(bottom: 1.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 3.v,
                    ),
                    child: Text(
                      "lbl_space".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  ],))
                  
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 30.h,
                top: 50.v,
              ),
              child: Row(
                children: [
                  OutlinedButton(onPressed: ()=>{

                  }, child: Row(children: [
                    CustomImageView(
                    svgPath: ImageConstant.imgSearchOnerrorcontainer,
                    height: 26.v,
                    width: 25.h,
                    margin: EdgeInsets.only(bottom: 1.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 3.v,
                    ),
                    child: Text(
                      "msg_account_settings".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),

                  ],))
                  
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 51.v,
                  right: 56.h,
                ),
                child: Text(
                  "msg_connected_devices".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ),
            Spacer(),
            Opacity(
              opacity: 0.4,
              child: Divider(
                color: theme.colorScheme.onErrorContainer.withOpacity(0.49),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 29.h,
                top: 26.v,
              ),
              child: Row(
                children: [
                  OutlinedButton(onPressed: ()=>{

                  }, child: Row(children: [
                    CustomImageView(
                    svgPath: ImageConstant.imgVolume,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 4.v,
                    ),
                    child: Text(
                      "lbl_logout".tr,
                      style: CustomTextStyles.titleMediumSemiBold,
                    ),
                  ),
                  ],))
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
