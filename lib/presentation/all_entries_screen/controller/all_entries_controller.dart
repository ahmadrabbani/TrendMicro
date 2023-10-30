import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/presentation/all_entries_screen/models/all_entries_model.dart';

/// A controller class for the AllEntriesScreen.
///
/// This class manages the state of the AllEntriesScreen, including the
/// current allEntriesModelObj
class AllEntriesController extends GetxController {
  Rx<AllEntriesModel> allEntriesModelObj = AllEntriesModel().obs;
}
