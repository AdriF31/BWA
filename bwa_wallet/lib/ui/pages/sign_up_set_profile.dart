import 'package:bwa_wallet/models/sign_up_form_model.dart';
import 'package:bwa_wallet/shared/shared_methods.dart';
import 'package:bwa_wallet/shared/theme.dart';
import 'package:bwa_wallet/ui/widgets/buttons.dart';
import 'package:bwa_wallet/ui/widgets/circle_image.dart';
import 'package:bwa_wallet/ui/widgets/forms.dart';
import 'package:bwa_wallet/ui/widgets/minor.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SignUpSetProfile extends StatefulWidget {
  final SignUpFormModel data;
  const SignUpSetProfile({Key? key, required this.data}) : super(key: key);

  @override
  State<SignUpSetProfile> createState() => _SignUpSetProfileState();
}

class _SignUpSetProfileState extends State<SignUpSetProfile> {
  final pinController = TextEditingController(text: '');
  XFile? selectedImage;
  selecImage() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        onTap: () async {
                          final image = await selectImage();
                          setState(() {
                            selectedImage = image;
                          });
                        },
                        child: const CustomCircleImage(
                          image: 'assets/ic_upload.png',
                        )),
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
                CustomFormField(
                  title: 'Set PIN (6 digit number)',
                  isPassword: true,
                  inputType: TextInputType.number,
                  maxLength: 6,
                  controller: pinController,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up-verify-id');
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
