import '../../../core/app_export.dart';
import 'userprofilerow1_item_model.dart';

/// This class defines the variables used in the [scanned_file_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ScannedFileOneModel {
  Rx<List<Userprofilerow1ItemModel>> userprofilerow1ItemList =
      Rx(List.generate(4, (index) => Userprofilerow1ItemModel()));
}
