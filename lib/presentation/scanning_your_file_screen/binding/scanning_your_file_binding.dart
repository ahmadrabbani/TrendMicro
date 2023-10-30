import '../controller/scanning_your_file_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ScanningYourFileScreen.
///
/// This class ensures that the ScanningYourFileController is created when the
/// ScanningYourFileScreen is first loaded.
class ScanningYourFileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScanningYourFileController());
  }
}
