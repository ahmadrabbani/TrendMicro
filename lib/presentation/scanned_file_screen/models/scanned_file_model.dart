import '../../../core/app_export.dart';
import 'userprofilerow_item_model.dart';

/// This class defines the variables used in the [scanned_file_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ScannedFileModel {
  Rx<List<UserprofilerowItemModel>> userprofilerowItemList =
      Rx(List.generate(4, (index) => UserprofilerowItemModel()));
}
