import '../../../core/app_export.dart';

/// This class is used in the [usernetwork_item_widget] screen.
class UsernetworkItemModel {
  UsernetworkItemModel({
    this.userIP,
    this.userURL,
    this.id,
  }) {
    userIP = userIP ?? Rx("192.145.37.114");
    userURL = userURL ?? Rx("https://192.145.37.114");
    id = id ?? Rx("");
  }

  Rx<String>? userIP;

  Rx<String>? userURL;

  Rx<String>? id;
}
