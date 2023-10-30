import '../../../core/app_export.dart';

/// This class is used in the [gridfilename_item_widget] screen.
class GridfilenameItemModel {
  GridfilenameItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
