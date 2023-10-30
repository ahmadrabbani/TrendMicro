import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/presentation/scanned_url_screen/models/scanned_url_model.dart';

/// A controller class for the ScannedUrlScreen.
///
/// This class manages the state of the ScannedUrlScreen, including the
/// current scannedUrlModelObj
class ScannedUrlController extends GetxController {
  Rx<ScannedUrlModel> scannedUrlModelObj = ScannedUrlModel().obs;
}
