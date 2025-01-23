import '../../util/result.dart';

abstract class TwilioRepo {
  Future<Result<String>> getToken({required String identity});
}
