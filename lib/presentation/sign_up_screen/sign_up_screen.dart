import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/core/utils/validation_functions.dart';
import 'package:trendmicrofrontend/widgets/custom_elevated_button.dart';
import 'package:trendmicrofrontend/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 7.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "msg_sign_up_to_trendmicro".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                SizedBox(height: 24.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "msg_register_your_account".tr,
                    style: CustomTextStyles.bodySmallOnErrorContainer,
                  ),
                ),
                SizedBox(height: 25.v),
                Opacity(
                  opacity: 0.8,
                  child: Text(
                    "lbl_email_id".tr,
                    style: CustomTextStyles.bodyMediumOnErrorContainer_1,
                  ),
                ),
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
                  },
                ),
                SizedBox(height: 15.v),
                Opacity(
                  opacity: 0.8,
                  child: Text(
                    "lbl_name".tr,
                    style: CustomTextStyles.bodyMediumOnErrorContainer_1,
                  ),
                ),
                SizedBox(height: 6.v),
                CustomTextFormField(
                  controller: controller.nameController,
                  hintText: "lbl_john_petel".tr,
                ),
                SizedBox(height: 15.v),
                Opacity(
                  opacity: 0.8,
                  child: Text(
                    "lbl_password".tr,
                    style: CustomTextStyles.bodyMediumOnErrorContainer_1,
                  ),
                ),
                SizedBox(height: 6.v),
                CustomTextFormField(
                  controller: controller.passwordController,
                  hintText: "lbl".tr,
                  textInputType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "Please enter valid password";
                    }
                    return null;
                  },
                  obscureText: true,
                ),
                SizedBox(height: 15.v),
                Opacity(
                  opacity: 0.8,
                  child: Text(
                    "msg_confirm_password".tr,
                    style: CustomTextStyles.bodyMediumOnErrorContainer_1,
                  ),
                ),
                SizedBox(height: 6.v),
                CustomTextFormField(
                  controller: controller.confirmpasswordController,
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
                  obscureText: true,
                ),
                SizedBox(height: 58.v),
                CustomElevatedButton(
                  text: "lbl_sign_up".tr,
                ),
                SizedBox(height: 84.v),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_already_have_an2".tr,
                          style: CustomTextStyles.bodyMedium13,
                        ),
                        TextSpan(
                          text: "  ".tr,
                        ),
                        TextSpan(
                          text: "lbl_log_in_here".tr,
                          style: CustomTextStyles.labelLargePrimary,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
