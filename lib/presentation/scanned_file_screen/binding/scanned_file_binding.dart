import '../controller/scanned_file_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ScannedFileScreen.
///
/// This class ensures that the ScannedFileController is created when the
/// ScannedFileScreen is first loaded.
class ScannedFileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScannedFileController());
  }
}
