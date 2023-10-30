import '../controller/all_entries_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AllEntriesScreen.
///
/// This class ensures that the AllEntriesController is created when the
/// AllEntriesScreen is first loaded.
class AllEntriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AllEntriesController());
  }
}
