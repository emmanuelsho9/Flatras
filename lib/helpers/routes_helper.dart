import 'package:flatra/common_widgets/bottom_bar.dart';
import 'package:flatra/features/auth/login_screen.dart';
import 'package:flatra/features/buy_crypto/screens/buy_screen.dart';
import 'package:flatra/features/buy_crypto/screens/enter_pin_screen.dart';
import 'package:flatra/features/buy_crypto/screens/payment_method.dart';
import 'package:flatra/features/home/screens/home.dart';
import 'package:flatra/features/onboarding/congratulations.dart';
import 'package:flatra/features/onboarding/lets_begin.dart';
import 'package:flatra/features/onboarding/onboard.dart';
import 'package:flatra/features/splashscreen/screens/splashscreen.dart';
import 'package:flatra/features/view_token/screens/view_coin.dart';
import 'package:get/get.dart';

class RouteHelpers {
  static String home = "/";
  static String onboardingScreen = "/onboardingScreen";
  static String congratulationScreen = "/congratulationScreen";
  static String loginScreen = "/loginScreen";
  static String dashboardScreen = "/dashboardScreen";
  static String bottomNavBar = "/bottomNavBar";
  static String viewCoinDetails = "/viewCoinDetails";
  static String buyCrypto = "/byCrypto";
  static String cryptoPaymentMethod = "/cryptoPaymentMethod";
  static String cryptoEnterPin = "/cryptoEnterPin";

  static String getHomeRoute() => home;
  static String getOnboardingRoute() => onboardingScreen;
  static String getCongratulationRoute() => congratulationScreen;
  static String getLoginRoute() => loginScreen;
  static String getDashboardRoute() => dashboardScreen;
  static String getBottomNavBarRoute() => bottomNavBar;
  static String getViewCoinDetails() => viewCoinDetails;
  static String getBuyCrypto() => buyCrypto;
  static String getCryptoPaymentMethod() => cryptoPaymentMethod;
  static String getCryptoEnterPin() => cryptoEnterPin;

  //Routes List
  static List<GetPage> routes = [
    GetPage(
        name: home,
        page: () => const LetBeginScreen(),
        transition: Transition.fade,
        transitionDuration: Duration(seconds: 1)),
    GetPage(
        name: onboardingScreen,
        page: () => const OnBoardingScreen(),
        transition: Transition.fade,
        transitionDuration: Duration(seconds: 1)),
    GetPage(
        name: congratulationScreen,
        page: () => const CongratulationScreen(),
        transition: Transition.fade,
        transitionDuration: Duration(seconds: 1)),
    GetPage(
        name: loginScreen,
        page: () => const LoginScreen(),
        transition: Transition.fade,
        transitionDuration: Duration(seconds: 1)),
    GetPage(
        name: dashboardScreen,
        page: () => const HomeScreen(),
        transition: Transition.fade,
        transitionDuration: Duration(seconds: 1)),
    GetPage(
        name: bottomNavBar,
        page: () => const BottomBar(),
        transition: Transition.fade,
        transitionDuration: Duration(seconds: 1)),
    GetPage(
        name: viewCoinDetails,
        page: () => const ViewCoin(),
        transition: Transition.rightToLeft,
        transitionDuration: Duration(seconds: 1)),
    GetPage(
        name: buyCrypto,
        page: () => const BuyCrytoScreen(),
        transition: Transition.fade,
        transitionDuration: Duration(seconds: 1)),
    GetPage(
        name: cryptoPaymentMethod,
        page: () => const PaymentMethod(),
        transition: Transition.fade,
        transitionDuration: Duration(seconds: 1)),
    GetPage(
        name: cryptoEnterPin,
        page: () => const EnterPinScreen(),
        transition: Transition.fade,
        transitionDuration: Duration(seconds: 1)),
  ];
}
