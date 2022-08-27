import 'package:bwa_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightBgColor,
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.backspace_outlined))
              ],
            )
          ],
        ));
  }
}
