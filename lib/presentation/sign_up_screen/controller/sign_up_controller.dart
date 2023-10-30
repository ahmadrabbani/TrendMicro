import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpScreen.
///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }
}
