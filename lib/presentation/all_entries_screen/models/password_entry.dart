import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class PasswordEntry {
  @HiveField(0)
  String website;
  @HiveField(1)
  String username;
  @HiveField(2)
  String password;

  PasswordEntry(this.website, this.username, this.password);
}
