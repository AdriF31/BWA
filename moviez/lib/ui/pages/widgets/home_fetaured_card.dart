import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:moviez/shared/theme.dart';

class HomeFeaturedCard extends StatelessWidget {
  final String images;
  final String title;
  final String genre;
  final double rating;
  const HomeFeaturedCard(
      {Key? key,
      required this.images,
      required this.title,
      required this.genre,
      required this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 24),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
                width: double.infinity,
                height: 207,
                child: Image.asset(
                  images,
                  fit: BoxFit.cover,
                )),
          ),
          const SizedBox(
            height: 19,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: navyTextStyle.copyWith(
                        fontSize: 20, fontWeight: semiBold),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    genre,
                    style: greyTextStyle.copyWith(
                        fontSize: 16, fontWeight: regular),
                  ),
                ],
              ),
              RatingBar(
                initialRating: rating,
                itemSize: 18,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                ratingWidget: RatingWidget(
                  full: Image.asset('assets/images/ic_star_full.png'),
                  half: Image.asset('assets/images/ic_star_half.png'),
                  empty: Image.asset('assets/images/ic_star_empty.png'),
                ),
                itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                onRatingUpdate: (rating) {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
