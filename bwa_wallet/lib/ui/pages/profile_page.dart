import 'package:bwa_wallet/shared/theme.dart';
import 'package:bwa_wallet/ui/widgets/buttons.dart';
import 'package:bwa_wallet/ui/widgets/circle_image.dart';
import 'package:bwa_wallet/ui/widgets/profile_menu.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightBgColor,
        appBar: AppBar(
            title: Text(
              'My Profile',
              style:
                  blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
            ),
            backgroundColor: lightBgColor,
            centerTitle: true,
            elevation: 0,
            iconTheme: IconThemeData(
              color: blackColor,
            )),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40),
              padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 30),
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Container(
                      width: 120,
                      height: 120,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/img_profile.png'))),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: whiteColor),
                          child: Center(
                            child: Icon(
                              Icons.check_circle,
                              color: greenColor,
                              size: 18,
                            ),
                          ),
                        ),
                      )),
                  const SizedBox(height: 16),
                  Text(
                    'Adrayay',
                    style: blackTextStyle.copyWith(
                        fontSize: 18, fontWeight: medium),
                  ),
                  const SizedBox(height: 40),
                  Column(
                    children: [
                      ProfileMenu(
                          icon: 'assets/ic_edit_profile.png',
                          title: 'Edit Profile',
                          onTap: () {}),
                      ProfileMenu(
                          icon: 'assets/ic_pin.png',
                          title: 'My PIN',
                          onTap: () {}),
                      ProfileMenu(
                          icon: 'assets/ic_wallet.png',
                          title: 'Wallet Settings',
                          onTap: () {}),
                      ProfileMenu(
                          icon: 'assets/ic_reward.png',
                          title: 'My Reward',
                          onTap: () {}),
                      ProfileMenu(
                          icon: 'assets/ic_help.png',
                          title: 'Help Center',
                          onTap: () {}),
                      ProfileMenu(
                          icon: 'assets/ic_logout.png',
                          title: 'Log Out',
                          onTap: () {}),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 87,
            ),
            CustomTextButton(
              title: "Report a problem",
              onPressed: () {},
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ));
  }
}
