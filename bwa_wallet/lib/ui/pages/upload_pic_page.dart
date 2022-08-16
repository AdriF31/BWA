import 'package:bwa_wallet/shared/theme.dart';
import 'package:bwa_wallet/ui/widgets/buttons.dart';
import 'package:bwa_wallet/ui/widgets/forms.dart';
import 'package:bwa_wallet/ui/widgets/minor.dart';
import 'package:flutter/material.dart';

class UploadPicturePage extends StatelessWidget {
  const UploadPicturePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const Logo(),
          const CustomText(
            upperText: 'Join Us to Unlock',
            lowerText: 'Your Growth',
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
                              image: const DecorationImage(
                                scale: 2,
                                image: AssetImage('assets/ic_upload.png'),
                              ))),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Shayna Hanna',
                      style: blackTextStyle.copyWith(
                          fontSize: 18, fontWeight: medium),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomFormField(
                  title: 'Set PIN (6 digit number)',
                  isPassword: true,
                  inputType: TextInputType.number,
                  maxLength: 6,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, '/verify');
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
