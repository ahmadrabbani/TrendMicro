import 'controller/summary_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/presentation/details_page/details_page.dart';
import 'package:trendmicrofrontend/presentation/detection_page/detection_page.dart';
import 'package:trendmicrofrontend/widgets/app_bar/appbar_image.dart';
import 'package:trendmicrofrontend/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class SummaryTabContainerScreen
    extends GetWidget<SummaryTabContainerController> {
  const SummaryTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: double.maxFinite,
          leading: AppbarImage(
            svgPath: ImageConstant.imgMenu,
            margin: EdgeInsets.fromLTRB(22.h, 18.v, 325.h, 18.v),
          ),
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 10.v),
              Container(
                height: 36.v,
                width: 333.h,
                child: TabBar(
                  controller: controller.tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: theme.colorScheme.onErrorContainer.withOpacity(1),
                  unselectedLabelColor:
                      theme.colorScheme.onErrorContainer.withOpacity(1),
                  tabs: [
                    Tab(
                      child: Text(
                        "lbl_summary".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_detection".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_details".tr,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 657.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    DetailsPage(),
                    DetectionPage(),
                    DetectionPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
