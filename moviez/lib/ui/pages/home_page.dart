import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:moviez/shared/theme.dart';
import 'package:moviez/ui/pages/widgets/home_fetaured_card.dart';
import 'package:moviez/ui/pages/widgets/movie_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        padding: const EdgeInsets.only(left: 24, top: 33),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Moviez',
                    style:
                        navyTextStyle.copyWith(fontSize: 28, fontWeight: black),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Watch much easier',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/search-result');
                },
                child: Container(
                  width: 55,
                  height: 45,
                  decoration: const BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomLeft: Radius.circular(50))),
                  child: const Icon(
                    Icons.search,
                    size: 22,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          buildFeatured(),
          buildDisney(),
        ],
      ),
    );
  }

  Widget buildFeatured() {
    return CarouselSlider(
        items: const [
          HomeFeaturedCard(
              images: 'assets/images/img_featured1.png',
              title: 'John Wick 4',
              genre: 'Action, Crime',
              rating: 4.5),
          HomeFeaturedCard(
              images: 'assets/images/img_featured2.png',
              title: 'Bohemian',
              genre: 'Documentary',
              rating: 4),
        ],
        options: CarouselOptions(
          autoPlay: true,
          height: 279,
        ));
  }

  Widget buildDisney() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'From Disney',
            style: navyTextStyle.copyWith(fontSize: 28, fontWeight: black),
          ),
          const SizedBox(
            height: 20,
          ),
          const MovieCard(
            images: 'assets/images/img_movie3.png',
            title: 'Mulan Session',
            genre: 'History, War',
            rating: 4,
          ),
          const MovieCard(
            images: 'assets/images/img_movie4.png',
            title: 'Beauty & The Beast',
            genre: 'Sci-Fiction',
            rating: 5,
          ),
        ],
      ),
    );
  }
}
