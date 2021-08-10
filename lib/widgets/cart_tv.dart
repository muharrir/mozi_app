import 'package:flutter/material.dart';
import 'package:mozi_app/theme.dart';

class CartTv extends StatelessWidget {
  final String imageUrl;
  final String genre;
  final String title;
  final String rating;

  CartTv({this.imageUrl, this.genre, this.title, this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 76,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                genre,
                style: grey3TextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 4,
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
          ),
        ],
      ),
    );
  }
}
