import 'controller/get_started_controller.dart';
import 'package:flutter/material.dart';
import 'package:trendmicrofrontend/core/app_export.dart';

class GetStartedScreen extends GetWidget<GetStartedController> {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 82.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 198.h,
                          margin: EdgeInsets.only(top: 1.v, right: 13.h),
                          child: Text("msg_scan_your_device".tr.toUpperCase(),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.headlineLarge!
                                  .copyWith(height: 1.47))),
                      CustomImageView(
                          imagePath: ImageConstant.img512withtext01,
                          height: 185.adaptSize,
                          width: 185.adaptSize,
                          margin: EdgeInsets.only(left: 7.h, top: 59.v))
                    ]))));
  }
}
