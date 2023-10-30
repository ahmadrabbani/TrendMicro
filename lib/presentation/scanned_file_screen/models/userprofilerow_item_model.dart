import '../../../core/app_export.dart';

/// This class is used in the [userprofilerow_item_widget] screen.
class UserprofilerowItemModel {
  UserprofilerowItemModel({
    this.passwordText,
    this.pageNumberText,
    this.id,
  }) {
    passwordText = passwordText ?? Rx("Scan pages");
    pageNumberText = pageNumberText ?? Rx("30");
    id = id ?? Rx("");
  }

  Rx<String>? passwordText;

  Rx<String>? pageNumberText;

  Rx<String>? id;
}
