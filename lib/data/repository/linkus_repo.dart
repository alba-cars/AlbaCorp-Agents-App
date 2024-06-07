import 'package:real_estate_app/util/result.dart';

abstract class LinkusRepo {
  Future<Result<bool>> makeACall({required String number, String? activityId});
}
