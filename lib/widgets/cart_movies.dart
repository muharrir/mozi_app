import 'package:flutter/material.dart';
import 'package:mozi_app/theme.dart';

class CartMovies extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String rating;

  CartMovies({this.imageUrl, this.title, this.rating});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 250,
          width: 190,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imageUrl,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Image.asset(
          rating,
          width: 98,
          height: 18,
        ),
      ],
    );
  }
}
