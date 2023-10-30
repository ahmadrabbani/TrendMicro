import '../controller/scanning_url_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ScanningUrlScreen.
///
/// This class ensures that the ScanningUrlController is created when the
/// ScanningUrlScreen is first loaded.
class ScanningUrlBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScanningUrlController());
  }
}
