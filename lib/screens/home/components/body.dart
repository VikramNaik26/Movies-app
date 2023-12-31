import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/screens/home/components/categories.dart';
import 'package:movie_app/screens/home/components/genres.dart';


import 'package:movie_app/screens/home/components/movie_carousel.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          CategoryList(),
          Genres(),
          SizedBox(
            height: kDefaultPadding,
          ),
          MovieCarousel(),
        ],
      ),
    );
  }
}
