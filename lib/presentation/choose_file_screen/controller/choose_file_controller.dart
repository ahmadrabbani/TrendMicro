import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/presentation/choose_file_screen/models/choose_file_model.dart';

/// A controller class for the ChooseFileScreen.
///
/// This class manages the state of the ChooseFileScreen, including the
/// current chooseFileModelObj
class ChooseFileController extends GetxController {
  Rx<ChooseFileModel> chooseFileModelObj = ChooseFileModel().obs;
}
