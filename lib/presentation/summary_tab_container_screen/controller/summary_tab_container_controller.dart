import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/presentation/summary_tab_container_screen/models/summary_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SummaryTabContainerScreen.
///
/// This class manages the state of the SummaryTabContainerScreen, including the
/// current summaryTabContainerModelObj
class SummaryTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<SummaryTabContainerModel> summaryTabContainerModelObj =
      SummaryTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
