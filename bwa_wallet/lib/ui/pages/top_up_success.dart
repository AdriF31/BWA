import 'package:bwa_wallet/shared/theme.dart';
import 'package:bwa_wallet/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class TopUpSuccessPage extends StatelessWidget {
  const TopUpSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Top Up\nWallet Berhasil",
            style: blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 26,
          ),
          Text(
            "Use the money wisely and\ngrow your finance",
            style: greyTextStyle.copyWith(fontSize: 16, fontWeight: regular),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomFilledButton(
            title: "Back To Home",
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
