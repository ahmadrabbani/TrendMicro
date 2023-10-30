import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/presentation/detection_page/models/detection_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DetectionPage.
///
/// This class manages the state of the DetectionPage, including the
/// current detectionModelObj
class DetectionController extends GetxController {
  DetectionController(this.detectionModelObj);

  TextEditingController arcabitController = TextEditingController();

  TextEditingController baiduController = TextEditingController();

  TextEditingController bitdefenderthetController = TextEditingController();

  TextEditingController clamavController = TextEditingController();

  Rx<DetectionModel> detectionModelObj;

  Rx<bool> valueFour = false.obs;

  Rx<bool> valuefourone = false.obs;

  Rx<bool> valuefourtwo = false.obs;

  Rx<bool> valuefourthree = false.obs;

  Rx<bool> valuefourfour = false.obs;

  Rx<bool> valuefourfive = false.obs;

  Rx<bool> valuefoursix = false.obs;

  Rx<bool> valuefourseven = false.obs;

  Rx<bool> valuefoureight = false.obs;

  Rx<bool> valuefournine = false.obs;

  Rx<bool> valuefourten = false.obs;

  Rx<bool> valuefour = false.obs;

  Rx<bool> valuefour1 = false.obs;

  Rx<bool> valuefour2 = false.obs;

  @override
  void onClose() {
    super.onClose();
    arcabitController.dispose();
    baiduController.dispose();
    bitdefenderthetController.dispose();
    clamavController.dispose();
  }
}
