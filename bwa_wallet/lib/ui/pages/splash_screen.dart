import 'dart:async';
import 'package:bwa_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(
          context, "/onboarding", (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBgColor,
      body: Center(
          child: Container(
        width: 155,
        height: 50,
        decoration: const BoxDecoration(
            image:
                DecorationImage(image: AssetImage('assets/img_logo_dark.png'))),
      )),
    );
  }
}
