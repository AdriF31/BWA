import 'package:bwa_wallet/shared/theme.dart';
import 'package:bwa_wallet/ui/widgets/buttons.dart';
import 'package:bwa_wallet/ui/widgets/forms.dart';
import 'package:bwa_wallet/ui/widgets/minor.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightBgColor,
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [
            const Logo(),
            const CustomText(
              upperText: 'Sign In',
              lowerText: '& Grow Your Finance',
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: whiteColor,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //email input field
                    const CustomFormField(title: 'Email Address'),
                    const SizedBox(
                      height: 16,
                    ),
                    //password input field
                    const CustomFormField(
                      title: 'Password',
                      isPassword: true,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text('Forgot Password',
                            style: blueTextStyle.copyWith(
                                fontSize: 14, fontWeight: regular)),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomFilledButton(
                      title: 'Sign In',
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/home', (route) => false);
                      },
                    ),
                  ]),
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextButton(
              title: 'Create New Account',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/sign-up', (route) => false);
              },
            ),
          ],
        ));
  }
}
