import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/core/helpers/app_config_helper.dart';
import 'package:real_estate_app/core/models/app_config/AppConfig.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher_string.dart';

enum QuickAccessEnumList { Website, CompanyPortfolio, InternetAccess }

extension QuickAccessListEnumExtension on QuickAccessEnumList {
  String getName() {
    switch (this) {
      case QuickAccessEnumList.Website:
        return "Alba Homes \nWebsite";
      case QuickAccessEnumList.CompanyPortfolio:
        return "Share company\nPortoflio";
      case QuickAccessEnumList.InternetAccess:
        return "Internet access";
    }
  }

  IconData getIcon() {
    switch (this) {
      case QuickAccessEnumList.Website:
        return CupertinoIcons.globe;
      case QuickAccessEnumList.CompanyPortfolio:
        return Icons.share;
      case QuickAccessEnumList.InternetAccess:
        return Icons.signal_wifi_0_bar;
    }
  }

  performAction() async {
    AppConfig appConfig = await AppConfigHelper().getAppInfo();
    switch (this) {
      case QuickAccessEnumList.Website:
        return launchUrlString("https://alba.homes");
      case QuickAccessEnumList.CompanyPortfolio:
        return Share.share(
            "Hey, \n Check out Alba Homes Portfolio \n${appConfig.companyPortfolioUrl ?? ""}");
      case QuickAccessEnumList.InternetAccess:
        return launchUrlString(appConfig.internetAccessPortal ?? "");
    }
  }
}
