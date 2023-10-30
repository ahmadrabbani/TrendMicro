import '../../../core/app_export.dart';
import 'usernetwork_item_model.dart';

/// This class defines the variables used in the [all_entries_expanded_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AllEntriesExpandedModel {
  Rx<List<UsernetworkItemModel>> usernetworkItemList =
      Rx(List.generate(4, (index) => UsernetworkItemModel()));
}
