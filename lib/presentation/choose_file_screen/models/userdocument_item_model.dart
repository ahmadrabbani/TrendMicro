import '../../../core/app_export.dart';

/// This class is used in the [userdocument_item_widget] screen.
class UserdocumentItemModel {
  UserdocumentItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
