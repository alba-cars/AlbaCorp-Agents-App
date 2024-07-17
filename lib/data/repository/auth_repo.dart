import 'package:real_estate_app/model/global_settings_model.dart';
import 'package:real_estate_app/util/result.dart';

import '../../model/agent_model.dart';
import '../../model/user.dart';

abstract class AuthRepo {
  Future<Result<User>> login(
      {required String username, required String password});
  Future<Result<Agent>> getAgentData({required String userId});
  Future<Result<GlobalSettings>> getSettings();
  Future<Result<User>> getLoggedInUser();
  Future<Result<void>> logout();
}
