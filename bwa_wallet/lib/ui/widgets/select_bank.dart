import 'package:bwa_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class SelectBank extends StatelessWidget {
  final String image;
  final String title;
  final String time;
  const SelectBank(
      {Key? key, required this.image, required this.title, required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 28),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.asset(
          image,
          width: 96,
          height: 30,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              title,
              style: blackTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            Text(time, style: greyTextStyle.copyWith(fontSize: 12))
          ],
        )
      ]),
    );
  }
}
