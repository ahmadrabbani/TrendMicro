import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/presentation/scanned_file_one_screen/models/scanned_file_one_model.dart';

/// A controller class for the ScannedFileOneScreen.
///
/// This class manages the state of the ScannedFileOneScreen, including the
/// current scannedFileOneModelObj
class ScannedFileOneController extends GetxController {
  Rx<ScannedFileOneModel> scannedFileOneModelObj = ScannedFileOneModel().obs;
}
