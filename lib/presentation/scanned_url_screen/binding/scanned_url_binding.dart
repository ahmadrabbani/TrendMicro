import '../controller/scanned_url_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ScannedUrlScreen.
///
/// This class ensures that the ScannedUrlController is created when the
/// ScannedUrlScreen is first loaded.
class ScannedUrlBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScannedUrlController());
  }
}
