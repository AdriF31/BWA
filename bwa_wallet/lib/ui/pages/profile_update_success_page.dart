import 'package:bwa_wallet/shared/theme.dart';
import 'package:bwa_wallet/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class ProfileEditSuccessPage extends StatelessWidget {
  const ProfileEditSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Nice Update!",
            style: blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 26,
          ),
          Text(
            "Your data is safe with\nour system",
            style: greyTextStyle.copyWith(fontSize: 16, fontWeight: regular),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomFilledButton(
            title: "My Profile",
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/home', (route) => false);
            },
            width: 183,
          )
        ],
      )),
    );
  }
}
