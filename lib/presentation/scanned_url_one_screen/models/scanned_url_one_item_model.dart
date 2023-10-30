import '../../../core/app_export.dart';

/// This class is used in the [scanned_url_one_item_widget] screen.
class ScannedUrlOneItemModel {
  ScannedUrlOneItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
