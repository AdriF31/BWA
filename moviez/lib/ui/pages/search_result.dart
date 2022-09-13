import 'package:flutter/material.dart';
import 'package:moviez/shared/theme.dart';
import 'package:moviez/ui/pages/widgets/movie_card.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 39),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                style: navyTextStyle.copyWith(
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: whiteColor,
                    hintText: 'movie',
                    prefixIcon: const Icon(
                      Icons.search,
                      color: navyColor,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20)),
                    contentPadding: const EdgeInsets.all(12)),
              ),
              const SizedBox(
                height: 35,
              ),
              Text(
                'Search Result',
                style: navyTextStyle.copyWith(fontSize: 28, fontWeight: black),
              ),
              buildSearchResult(),
              const SizedBox(
                height: 53,
              ),
              GestureDetector(
                onTap: () {},
                child: Center(
                  child: Container(
                    width: 220,
                    height: 50,
                    decoration: BoxDecoration(
                        color: navyColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        'Suggest Movie',
                        style: whiteTextStyle.copyWith(
                            fontSize: 16, fontWeight: bold),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSearchResult() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: const [
          MovieCard(
              images: 'assets/images/img_movie1.png',
              title: 'The Dark II',
              genre: 'Horror',
              rating: 4),
          MovieCard(
              images: 'assets/images/img_movie2.png',
              title: 'The Dark Khight',
              genre: 'Heroes',
              rating: 4),
          MovieCard(
              images: 'assets/images/img_movie6.png',
              title: 'The Dark Tower',
              genre: 'Action',
              rating: 4),
        ],
      ),
    );
  }
}
