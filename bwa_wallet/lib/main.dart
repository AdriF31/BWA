import 'package:bwa_wallet/ui/pages/home_page.dart';
import 'package:bwa_wallet/ui/pages/onboarding_page.dart';
import 'package:bwa_wallet/ui/pages/sign_in_page.dart';
import 'package:bwa_wallet/ui/pages/sign_up_page.dart';
import 'package:bwa_wallet/ui/pages/sign_up_success.dart';
import 'package:bwa_wallet/ui/pages/splash_screen.dart';
import 'package:bwa_wallet/ui/pages/sign_up_set_profile.dart';
import 'package:bwa_wallet/ui/pages/sign_up_verify_id.dart';
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
        '/home':(context)=>const HomePage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
