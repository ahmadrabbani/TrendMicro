import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/presentation/scanning_url_screen/models/scanning_url_model.dart';

/// A controller class for the ScanningUrlScreen.
///
/// This class manages the state of the ScanningUrlScreen, including the
/// current scanningUrlModelObj
class ScanningUrlController extends GetxController {
  Rx<ScanningUrlModel> scanningUrlModelObj = ScanningUrlModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 15000), () {
      Get.toNamed(
        AppRoutes.scannedUrlScreen,
      );
    });
  }
}
