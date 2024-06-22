import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:real_estate_app/core/models/app_config/AppConfig.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppConfigHelper {
  Future<AppConfig> getAppInfo() async {
    FirebaseFirestore fireStoreDB = FirebaseFirestore.instance;
    QuerySnapshot snapshot = await fireStoreDB.collection("AppConfig").get();
    AppConfig appConfig = AppConfig.fromJson(
        json.decode(json.encode(snapshot.docs.first.data())));
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return appConfig.copyWith(currentVersion: packageInfo.version);
  }
}
