import '../../../core/app_export.dart';
import 'gridfilename_item_model.dart';
import 'userdocument_item_model.dart';

/// This class defines the variables used in the [choose_file_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChooseFileModel {
  Rx<List<GridfilenameItemModel>> gridfilenameItemList =
      Rx(List.generate(7, (index) => GridfilenameItemModel()));

  Rx<List<UserdocumentItemModel>> userdocumentItemList =
      Rx(List.generate(3, (index) => UserdocumentItemModel()));
}
