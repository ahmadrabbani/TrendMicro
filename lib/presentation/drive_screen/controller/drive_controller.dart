import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/presentation/home_screen/models/home_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomeScreen.
///
/// This class manages the state of the HomeScreen, including the
/// current homeModelObj
class DriveController extends GetxController {
  var userId = Get.arguments[NavigationArgs.userId];

  TextEditingController enteryoururlController = TextEditingController();

  Rx<HomeModel> homeModelObj = HomeModel().obs;
  
  @override
  void onClose() {
    super.onClose();
    enteryoururlController.dispose();
  }
}
