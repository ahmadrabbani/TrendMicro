import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/presentation/scanned_file_screen/models/scanned_file_model.dart';

/// A controller class for the ScannedFileScreen.
///
/// This class manages the state of the ScannedFileScreen, including the
/// current scannedFileModelObj
class ScannedFileController extends GetxController {
  Rx<ScannedFileModel> scannedFileModelObj = ScannedFileModel().obs;
}
