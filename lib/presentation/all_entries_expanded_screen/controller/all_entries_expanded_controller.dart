import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/presentation/all_entries_expanded_screen/models/all_entries_expanded_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AllEntriesExpandedScreen.
///
/// This class manages the state of the AllEntriesExpandedScreen, including the
/// current allEntriesExpandedModelObj
class AllEntriesExpandedController extends GetxController {
  TextEditingController rootController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<AllEntriesExpandedModel> allEntriesExpandedModelObj =
      AllEntriesExpandedModel().obs;

  @override
  void onClose() {
    super.onClose();
    rootController.dispose();
    passwordController.dispose();
  }
}
