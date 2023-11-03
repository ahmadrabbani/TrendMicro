import 'package:hive/hive.dart';
import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/presentation/all_entries_screen/models/all_entries_model.dart';
import 'package:trendmicrofrontend/presentation/all_entries_screen/models/password_entry.dart';

/// A controller class for the AllEntriesScreen.
///
/// This class manages the state of the AllEntriesScreen, including the
/// current allEntriesModelObj
class AllEntriesController extends GetxController {
 final websiteBox = Hive.box<PasswordEntry>('websites');

  RxList<PasswordEntry> websites = <PasswordEntry>[].obs;
  List<PasswordEntry> data =[];
  @override
  void onInit() {
    super.onInit();
    var temp = websites.assignAll(websiteBox.values.toList());
  }
}
