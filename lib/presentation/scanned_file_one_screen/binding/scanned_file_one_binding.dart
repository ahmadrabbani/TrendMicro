import '../controller/scanned_file_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ScannedFileOneScreen.
///
/// This class ensures that the ScannedFileOneController is created when the
/// ScannedFileOneScreen is first loaded.
class ScannedFileOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScannedFileOneController());
  }
}
