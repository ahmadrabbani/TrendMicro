import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/presentation/details_page/models/details_model.dart';

/// A controller class for the DetailsPage.
///
/// This class manages the state of the DetailsPage, including the
/// current detailsModelObj
class DetailsController extends GetxController {
  DetailsController(this.detailsModelObj);

  Rx<DetailsModel> detailsModelObj;
}
