import '../../../core/app_export.dart';

/// This class is used in the [openurl_item_widget] screen.
class OpenurlItemModel {
  OpenurlItemModel({
    this.text,
    this.id,
  }) {
    text = text ?? Rx("Open URL");
    id = id ?? Rx("");
  }

  Rx<String>? text;

  Rx<String>? id;
}
