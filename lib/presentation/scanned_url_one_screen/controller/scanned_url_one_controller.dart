import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/presentation/scanned_url_one_screen/models/scanned_url_one_model.dart';

/// A controller class for the ScannedUrlOneScreen.
///
/// This class manages the state of the ScannedUrlOneScreen, including the
/// current scannedUrlOneModelObj
class ScannedUrlOneController extends GetxController {
  Rx<ScannedUrlOneModel> scannedUrlOneModelObj = ScannedUrlOneModel().obs;
}
