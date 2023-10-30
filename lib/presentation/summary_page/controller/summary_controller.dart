import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/presentation/summary_page/models/summary_model.dart';

/// A controller class for the SummaryPage.
///
/// This class manages the state of the SummaryPage, including the
/// current summaryModelObj
class SummaryController extends GetxController {
  SummaryController(this.summaryModelObj);

  Rx<SummaryModel> summaryModelObj;
}
