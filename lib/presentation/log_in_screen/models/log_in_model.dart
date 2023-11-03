
/// This class defines the variables used in the [log_in_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LogInModel {

  bool? isLoggedIn;
  late List<String> user;
  LogInModel(bool? login, List<String>userData ){
    this.isLoggedIn=login;
    this.user=userData;
  }
  
}
