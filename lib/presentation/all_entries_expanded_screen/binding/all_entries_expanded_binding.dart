import '../controller/all_entries_expanded_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AllEntriesExpandedScreen.
///
/// This class ensures that the AllEntriesExpandedController is created when the
/// AllEntriesExpandedScreen is first loaded.
class AllEntriesExpandedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AllEntriesExpandedController());
  }
}
