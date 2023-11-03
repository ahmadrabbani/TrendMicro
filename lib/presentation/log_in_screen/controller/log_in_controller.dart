import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/presentation/log_in_screen/models/log_in_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LogInScreen.
///
/// This class manages the state of the LogInScreen, including the
/// current logInModelObj
class LogInController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LogInModel> logInModelObj = LogInModel(false,[]).obs;
  bool? get isLoggedIn => this.logInModelObj.value.isLoggedIn;
  
   @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
  
  login() {
    // if(isValidEmail(inputString))
    final email = this.emailController.text;
    final password = this.passwordController.text;
    List<String> validUsers = ['ahmad@gmail.com', 'ali@hotmail.com', 'amr@gmail.com', 'andrew@gmail.com'];
    String? passwordValid= "abcd1234";

    if(email == "" || password == "")
    {
              Get.snackbar('Error', 'user data is empty');
              return;

    }
    if(validUsers.contains(email) && password == passwordValid){
        List<String> userData = [email,password];
          logInModelObj.value = LogInModel(true,userData);

      Get.toNamed(AppRoutes.homeScreen,
        arguments: {NavigationArgs.userId: email});
    }
    else
    {
          Get.snackbar('Error', 'Invalid Username and Password');

    }
    
  }
  void logout() {
    // Perform logout logic
    // Once the user is successfully logged out, update the model
    logInModelObj.value = LogInModel(false, []);
  }
}
