import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_upgrade_version/flutter_upgrade_version.dart';
import 'package:real_estate_app/core/models/app_config/AppConfig.dart';

class AppConfigHelper {
  Future<AppConfig> getAppInfo() async {
    FirebaseFirestore fireStoreDB = FirebaseFirestore.instance;
    QuerySnapshot snapshot = await fireStoreDB.collection("AppConfig").get();
    AppConfig appConfig = AppConfig.fromJson(
        json.decode(json.encode(snapshot.docs.first.data())));
    PackageInfo packageInfo = await PackageManager.getPackageInfo();
    return appConfig.copyWith(currentVersion: packageInfo.version);
  }
}
