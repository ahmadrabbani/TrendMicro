import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/presentation/drawer_menu_draweritem/models/drawer_menu_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DrawerMenuDraweritem.
///
/// This class manages the state of the DrawerMenuDraweritem, including the
/// current drawerMenuModelObj
class DrawerMenuController extends GetxController {
  TextEditingController scanvalueoneController = TextEditingController();

  Rx<DrawerMenuModel> drawerMenuModelObj = DrawerMenuModel().obs;

  @override
  void onClose() {
    super.onClose();
    scanvalueoneController.dispose();
  }
}
