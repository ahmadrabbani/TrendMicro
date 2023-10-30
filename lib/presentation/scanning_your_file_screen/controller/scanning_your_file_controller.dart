import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/presentation/scanning_your_file_screen/models/scanning_your_file_model.dart';

/// A controller class for the ScanningYourFileScreen.
///
/// This class manages the state of the ScanningYourFileScreen, including the
/// current scanningYourFileModelObj
class ScanningYourFileController extends GetxController {
  Rx<ScanningYourFileModel> scanningYourFileModelObj =
      ScanningYourFileModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 10000), () {
      Get.toNamed(
        AppRoutes.scannedFileOneScreen,
      );
    });
  }
}
