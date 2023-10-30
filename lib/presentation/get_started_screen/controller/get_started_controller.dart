import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/presentation/get_started_screen/models/get_started_model.dart';

/// A controller class for the GetStartedScreen.
///
/// This class manages the state of the GetStartedScreen, including the
/// current getStartedModelObj
class GetStartedController extends GetxController {
  Rx<GetStartedModel> getStartedModelObj = GetStartedModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.logInScreen,
      );
    });
  }
}
