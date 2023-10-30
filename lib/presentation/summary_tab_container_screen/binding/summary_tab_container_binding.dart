import '../controller/summary_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SummaryTabContainerScreen.
///
/// This class ensures that the SummaryTabContainerController is created when the
/// SummaryTabContainerScreen is first loaded.
class SummaryTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SummaryTabContainerController());
  }
}
