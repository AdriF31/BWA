import 'package:bwa_wallet/shared/theme.dart';
import 'package:bwa_wallet/ui/pages/edit_pin_page.dart';
import 'package:bwa_wallet/ui/pages/edit_profile_page.dart';
import 'package:bwa_wallet/ui/pages/home_page.dart';
import 'package:bwa_wallet/ui/pages/onboarding_page.dart';
import 'package:bwa_wallet/ui/pages/pin_page.dart';
import 'package:bwa_wallet/ui/pages/profile_page.dart';
import 'package:bwa_wallet/ui/pages/profile_update_success_page.dart';
import 'package:bwa_wallet/ui/pages/sign_in_page.dart';
import 'package:bwa_wallet/ui/pages/sign_up_page.dart';
import 'package:bwa_wallet/ui/pages/sign_up_success.dart';
import 'package:bwa_wallet/ui/pages/splash_screen.dart';
import 'package:bwa_wallet/ui/pages/sign_up_set_profile.dart';
import 'package:bwa_wallet/ui/pages/sign_up_verify_id.dart';
import 'package:bwa_wallet/ui/pages/top_up_amount_page.dart';
import 'package:bwa_wallet/ui/pages/top_up_page.dart';
import 'package:bwa_wallet/ui/pages/top_up_success.dart';
import 'package:bwa_wallet/ui/pages/transfer_amount_page.dart';
import 'package:bwa_wallet/ui/pages/transfer_page.dart';
import 'package:bwa_wallet/ui/pages/transfer_success_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const SplashScreen(),
        '/onboarding': (context) => const OnBoardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/sign-up-set-profile': (context) => const SignUpSetProfile(),
        '/sign-up-verify-id': (context) => const SignUpVerifyId(),
        '/sign-up-success': (context) => const SignUpSuccessPage(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/pin-page': (context) => const PinPage(),
        '/edit-profile': (context) => const EditProfilePage(),
        '/edit-pin': (context) => const EditPinPage(),
        '/edit-profile-success': (context) => const ProfileEditSuccessPage(),
        '/top-up': (context) => const TopUpPage(),
        '/top-up-amount': (context) => const TopUpAmountPage(),
        '/top-up-success': (context) => const TopUpSuccessPage(),
        '/transfer': (context) => const TransferPage(),
        '/transfer-amount': (context) => const TransferAmountPage(),
        '/transfer-success': (context) => const TransferSuccessPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'E wallet',
      theme: ThemeData(
          scaffoldBackgroundColor: lightBgColor,
          appBarTheme: AppBarTheme(
              backgroundColor: lightBgColor,
              centerTitle: true,
              elevation: 0,
              iconTheme: IconThemeData(
                color: blackColor,
              ),
              titleTextStyle:
                  blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold))),
    );
  }
}
