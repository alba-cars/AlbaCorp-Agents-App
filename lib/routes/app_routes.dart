abstract class Routes {
  static const homeRoute = Paths.homePath;
  static const introRoute = Paths.introPath;
  static const loginRoute = Paths.loginPath;
  static const homeScreenRoute = Paths.homeScreenPath;
  static const forgotRoute = Paths.forgotPath;
  static const resetRoute = Paths.resetPath;
  static const passChangeRoute = Paths.passChangePath;
  static const verificationRoute = Paths.verificationPath;
}

abstract class Paths {
  static const homePath = "/";
  static const introPath = "/IntroScreen";
  static const loginPath = "/LoginScreen";
  static const homeScreenPath = "/HomeScreen";
  static const forgotPath = "/ForgotScreen";
  static const resetPath = "/ResetScreen";
  static const passChangePath = "/PassChangeScreen";
  static const verificationPath = "/VerificationScreen";
}
