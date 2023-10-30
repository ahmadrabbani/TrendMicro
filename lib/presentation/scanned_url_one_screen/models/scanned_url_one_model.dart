import '../../../core/app_export.dart';
import 'scanned_url_one_item_model.dart';

/// This class defines the variables used in the [scanned_url_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ScannedUrlOneModel {
  Rx<List<ScannedUrlOneItemModel>> scannedUrlOneItemList =
      Rx(List.generate(4, (index) => ScannedUrlOneItemModel()));
}
