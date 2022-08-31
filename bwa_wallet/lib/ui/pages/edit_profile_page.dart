import 'package:bwa_wallet/shared/theme.dart';
import 'package:bwa_wallet/ui/widgets/buttons.dart';
import 'package:bwa_wallet/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController fullNameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 24, right: 24, top: 30),
          padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 30),
          decoration: BoxDecoration(
              color: whiteColor, borderRadius: BorderRadius.circular(20)),
          child: Column(children: [
            CustomFormField(title: 'Username', controller: usernameController),
            const SizedBox(height: 16),
            CustomFormField(title: 'Full Name', controller: fullNameController),
            const SizedBox(height: 16),
            CustomFormField(
                title: 'Email Address', controller: emailController),
            const SizedBox(height: 16),
            CustomFormField(
              title: 'Password',
              controller: passwordController,
              isPassword: true,
            ),
            const SizedBox(height: 30),
            CustomFilledButton(
              title: 'Update Now',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/edit-profile-success', (route) => false);
              },
            )
          ]),
        ),
      ),
    );
  }
}
