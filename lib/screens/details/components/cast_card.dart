import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';

class CastCard extends StatelessWidget {
  final Map cast;

  const CastCard({super.key, required this.cast});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: kDefaultPadding),
      width: 80,
      child: Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  cast['image'],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          Text(
            cast['orginalName'],
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
            maxLines: 2,
          ),
          const SizedBox(
            height: kDefaultPadding / 4,
          ),
          Text(
            cast['movieName'],
            textAlign: TextAlign.center,
            maxLines: 1,
            style: const TextStyle(color: kTextLightColor),
          )
        ],
      ),
    );
  }
}
