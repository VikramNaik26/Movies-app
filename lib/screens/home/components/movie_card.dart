import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/screens/details/details_screen.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      closedElevation: 0,
      openElevation: 0,
      closedBuilder: (context, action) => buildMovieCard(context),
      openBuilder: (context, action) => DetailScreen(
        movie: movie,
      ),
    );
  }

  Column buildMovieCard(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            decoration: BoxDecoration(
              boxShadow: const [kDefaultShadow],
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(movie.poster),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          child: Text(
            movie.title,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/star_fill.svg',
              height: 20,
            ),
            const SizedBox(
              width: kDefaultPadding / 2,
            ),
            Text(
              '${movie.rating}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        )
      ],
    );
  }
}
