import '../../model/quick_access_model.dart';
import '../../util/result.dart';

abstract class QuickAccessRepo {
  Future<Result<List<QuickAccessSection>>> getSections();
  Future<Result<List<QuickAccessCard>>> getCards(String sectionId);
}
