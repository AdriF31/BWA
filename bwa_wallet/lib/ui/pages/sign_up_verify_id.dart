import 'package:bwa_wallet/shared/theme.dart';
import 'package:bwa_wallet/ui/widgets/buttons.dart';
import 'package:bwa_wallet/ui/widgets/minor.dart';
import 'package:flutter/material.dart';

class SignUpVerifyId extends StatelessWidget {
  const SignUpVerifyId({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const Logo(),
          const CustomText(
            upperText: 'Verify Your',
            lowerText: 'Account',
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: lightGreyColor,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                            child: Image.asset(
                          'assets/ic_upload.png',
                          width: 32,
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Passport/ID Card',
                      style: blackTextStyle.copyWith(
                          fontSize: 18, fontWeight: medium),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomFilledButton(
                  title: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up-success');
                  },
                )
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          CustomTextButton(
            title: 'Skip For Now',
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
