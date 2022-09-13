import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:moviez/shared/theme.dart';

class MovieCard extends StatelessWidget {

  final String images;
  final String title;
  final String genre;
  final double rating;
  const MovieCard(
      {Key? key,
      required this.images,
      required this.title,
      required this.genre,
      required this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 127,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(images))),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    navyTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                genre,
                style:
                    greyTextStyle.copyWith(fontSize: 16, fontWeight: regular),
              ),
              const SizedBox(
                height: 20,
              ),
              RatingBar(
                initialRating:rating,
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
          )
        ],
      ),
    );
  }
}
