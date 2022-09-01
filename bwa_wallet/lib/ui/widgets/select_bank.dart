import 'package:bwa_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class SelectBank extends StatelessWidget {
  final String image;
  final String title;
  final String time;
  final bool? isSelected;
  const SelectBank(
      {Key? key,
      required this.image,
      required this.title,
      required this.time,
      this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 28),
      margin: const EdgeInsets.only(bottom: 18),
      width: double.infinity,
      height: 110,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            width: 2, color: isSelected == true ? blueColor : whiteColor),
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
