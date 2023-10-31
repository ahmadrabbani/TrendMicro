import 'controller/log_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/core/utils/validation_functions.dart';
import 'package:trendmicrofrontend/widgets/custom_elevated_button.dart';
import 'package:trendmicrofrontend/widgets/custom_outlined_button.dart';
import 'package:trendmicrofrontend/widgets/custom_text_form_field.dart';
import 'package:trendmicrofrontend/core/constants/User.dart';
import 'package:trendmicrofrontend/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends GetWidget<LogInController> {
  LogInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.all(20.h),
                    child: Column(children: [
                      SizedBox(height: 7.v),
                      Text("msg_login_to_trendmicro".tr,
                          style: theme.textTheme.headlineSmall),
                      SizedBox(height: 24.v),
                      Text("msg_welcome_good_to".tr,
                          style: CustomTextStyles.bodySmallOnErrorContainer),
                      SizedBox(height: 25.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Opacity(
                              opacity: 0.8,
                              child: Text("lbl_email_id".tr,
                                  style: CustomTextStyles
                                      .bodyMediumOnErrorContainer_1))),
                      SizedBox(height: 6.v),
                      CustomTextFormField(
                          controller: controller.emailController,
                          hintText: "msg_name_example_com".tr,
                          textInputType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null ||
                                (!isValidEmail(value, isRequired: true))) {
                              return "Please enter valid email";
                            }
                            return null;
                          }),
                      SizedBox(height: 15.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Opacity(
                              opacity: 0.8,
                              child: Text("lbl_password".tr,
                                  style: CustomTextStyles
                                      .bodyMediumOnErrorContainer_1))),
                      SizedBox(height: 6.v),
                      CustomTextFormField(
                          controller: controller.passwordController,
                          hintText: "lbl".tr,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          validator: (value) {
                            if (value == null ||
                                (!isValidPassword(value, isRequired: true))) {
                              return "Please enter valid password";
                            }
                            return null;
                          },
                          obscureText: true),
                      SizedBox(height: 44.v),
                      CustomElevatedButton(
                          text: "lbl_log_in".tr,
                          onTap: () {
                            navigateToLogin();
                          }),
                      SizedBox(height: 16.v),
                      Text("msg_forgot_password".tr,
                          style: theme.textTheme.bodyMedium),
                      SizedBox(height: 32.v),
                      Text("lbl_or".tr,
                          style: CustomTextStyles.titleSmallSemiBold),
                      SizedBox(height: 37.v),
                      CustomElevatedButton(
                          height: 60.v,
                          text: "msg_continue_with_google".tr,
                          leftIcon: Container(
                              margin: EdgeInsets.only(right: 10.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgImage19,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize)),
                          buttonStyle: CustomButtonStyles.fillOnErrorContainer,
                          buttonTextStyle:
                              CustomTextStyles.titleSmallMontserratBlack900,
                          onTap: () {
                            onTapContinuewith();
                          }),
                      SizedBox(height: 20.v),
                      CustomOutlinedButton(
                          height: 60.v,
                          text: "msg_continue_with_apple".tr,
                          leftIcon: Container(
                              margin: EdgeInsets.only(right: 10.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgImage20,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize)),
                          buttonStyle:
                              CustomButtonStyles.outlineOnErrorContainer,
                          buttonTextStyle:
                              CustomTextStyles.titleSmallMontserrat),
                      SizedBox(height: 36.v),
                      GestureDetector(
                          onTap: () {
                            navigateToSignUp();
                          },
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_don_t_have_an_account2".tr,
                                    style: CustomTextStyles.bodyMedium13),
                                TextSpan(text: "  ".tr),
                                TextSpan(
                                    text: "lbl_sign_up".tr,
                                    style: CustomTextStyles.labelLargePrimary)
                              ]),
                              textAlign: TextAlign.left))
                    ])))));
  }

  /// Navigates to the homeScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the homeScreen.
  /// While navigation passing user_id, as an argument to the
  /// homeScreen
  navigateToLogin() {
    // if(isValidEmail(inputString))
    Get.toNamed(AppRoutes.homeScreen,
        arguments: {NavigationArgs.userId: 1});
  }

  /// Performs a Google sign-in and returns a [GoogleUser] object.
  ///
  /// If the sign-in is successful, the [onSuccess] callback will be called with
  /// a TODO comment needed to be modified by you.
  /// If the sign-in fails, the [onError] callback will be called with the error message.
  ///
  /// Throws an exception if the Google sign-in process fails.
  onTapContinuewith() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  /// Navigates to the signUpScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the signUpScreen.
  navigateToSignUp() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}
