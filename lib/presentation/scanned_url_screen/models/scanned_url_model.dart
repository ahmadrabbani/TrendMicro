import '../../../core/app_export.dart';
import 'openurl_item_model.dart';

/// This class defines the variables used in the [scanned_url_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ScannedUrlModel {
  Rx<List<OpenurlItemModel>> openurlItemList =
      Rx(List.generate(4, (index) => OpenurlItemModel()));
}
