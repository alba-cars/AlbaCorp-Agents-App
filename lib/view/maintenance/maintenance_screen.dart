import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_api_availability/google_api_availability.dart';
import 'package:lottie/lottie.dart';
import 'package:real_estate_app/core/assets/lottie.dart';
import 'package:real_estate_app/core/models/app_config/AppConfig.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/text.dart';
import 'package:store_redirect/store_redirect.dart';

import '../../app/auth_bloc/auth_bloc.dart';

class MaintenanceScreen extends StatelessWidget {
  const MaintenanceScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppConfig appConfig =
        context.select((AuthBloc authBloc) => authBloc.state.appConfig) ??
            AppConfig(
                underMaintenance: false,
                minVersion: "1.0.0",
                latestVersion: "1.0.0");
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Center(
            child: Visibility(
              visible: appConfig.underMaintenance,
              child: getMaintenanceWidget(context, appConfig),
              replacement: getUpdatesWidget(context, appConfig),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Text("Version " + appConfig.currentVersion))
        ],
      )),
    );
  }

  Widget getMaintenanceWidget(BuildContext context, AppConfig appConfig) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Lottie.asset(AppLottieAssets.underMaintenanceAsset),
        SizedBox(
          height: 16,
        ),
        TitleText(text: "App Under Maintenance"),
        SizedBox(
          height: 24,
        ),
        NormalText(
            text:
                "We'll be back shortly. Thank you for your patience! \n For any assistance, please contact our Technical Team.")
      ],
    );
  }

  Widget getUpdatesWidget(BuildContext context, AppConfig appConfig) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Lottie.asset(AppLottieAssets.updateAsset),
        SizedBox(
          height: 16,
        ),
        TitleText(
            text: appConfig.isMandatoryUpdateRequired()
                ? "App Update Required"
                : "App Update Available"),
        SizedBox(
          height: 24,
        ),
        NormalText(text: getUpdateMessage(appConfig)),
        SizedBox(
          height: 16,
        ),
        AppPrimaryButton(
            text: "Update now",
            onTap: () {
              updateApp(context, appConfig);
            }),
        SizedBox(
          height: 16,
        ),
        Visibility(
            visible: !appConfig.isMandatoryUpdateRequired(),
            child: InkWell(
                onTap: () {
                  skipUpdate(context);
                },
                child: Text(
                  "Skip",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.blueAccent,
                        decoration: TextDecoration.underline,
                      ),
                )))
      ],
    );
  }

  String getUpdateMessage(AppConfig appConfig) {
    return appConfig.isMandatoryUpdateRequired()
        ? "Please update the app to continue using it. Thank you for your understanding!"
        : "An update is available with new features. Update now or continue using the current version.";
  }

  Future<void> updateApp(BuildContext context, AppConfig appConfig) async {
    if (Platform.isAndroid) {
      GooglePlayServicesAvailability availability = await GoogleApiAvailability
          .instance
          .checkGooglePlayServicesAvailability();
      if (availability ==
          GooglePlayServicesAvailability.notAvailableOnPlatform) {
        return; // We are not supporting huawei
      }
      StoreRedirect.redirect(
        androidAppId: appConfig.playStoreUrl,
      );

      return;
    }
    StoreRedirect.redirect(
      iOSAppId: appConfig.appStoreUrl,
    );
  }

  void skipUpdate(BuildContext context) {
    context.read<AuthBloc>().add(AuthEvent.started());
  }
}
