import '../controller/choose_file_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChooseFileScreen.
///
/// This class ensures that the ChooseFileController is created when the
/// ChooseFileScreen is first loaded.
class ChooseFileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChooseFileController());
  }
}
