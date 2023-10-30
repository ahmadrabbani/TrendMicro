import '../controller/scanned_url_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ScannedUrlOneScreen.
///
/// This class ensures that the ScannedUrlOneController is created when the
/// ScannedUrlOneScreen is first loaded.
class ScannedUrlOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScannedUrlOneController());
  }
}
