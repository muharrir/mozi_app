import 'package:flutter/material.dart';
import 'package:mozi_app/theme.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 50,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/icon_back.png',
                    width: 26,
                  ),
                ),
                Text(
                  'Details Movie',
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                Image.asset(
                  'assets/icon_fav.png',
                  width: 24,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            width: double.infinity,
            height: 370,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/movie.png',
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Behind Her Eyes',
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Director: Erik Richter Strand | ',
                      style: grey1TextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: yellowColor,
                      size: 18,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      '4,9',
                      style: grey1TextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 12),
                      padding: EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 12,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: lightBackground,
                      ),
                      child: Text(
                        'Drama',
                        style: grey2TextStyle,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 12),
                      padding: EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 12,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: lightBackground,
                      ),
                      child: Text(
                        'Supernatural fiction',
                        style: grey2TextStyle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Storyline',
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text.rich(
                  TextSpan(
                      text:
                          'Adele is a Scottish heiress whose extremely\nwealthy family owns estates and grounds.\nWhen she was a teenager. ',
                      style: grey3TextStyle.copyWith(
                        fontWeight: light,
                      ),
                      children: [
                        TextSpan(
                            text: 'Read More',
                            style: blueTextStyle.copyWith(
                              fontWeight: light,
                            )),
                      ]),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 56,
            margin: EdgeInsets.only(
              top: 24,
              bottom: 30,
            ),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: blueColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Watch Movie',
                style: whiteTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: medium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
