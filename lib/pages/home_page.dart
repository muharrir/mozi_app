import 'package:flutter/material.dart';
import 'package:mozi_app/pages/detail_page.dart';
import 'package:mozi_app/theme.dart';
import 'package:mozi_app/widgets/cart_movies.dart';
import 'package:mozi_app/widgets/cart_tv.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 30,
              left: 30,
              right: 30,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/profile.png',
                      width: 48,
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning,',
                          style: grey3TextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Alex Samm',
                          style: whiteTextStyle.copyWith(
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/icon_notif.png',
                      width: 18,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      'Top Movie',
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: medium,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'See more',
                      style: grey3TextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.only(
              top: 12,
              left: 30,
              right: 30,
            ),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CartMovies(
                  imageUrl: 'assets/top1.png',
                  title: 'Avatar',
                  rating: 'assets/rating1.png',
                ),
                SizedBox(
                  width: 30,
                ),
                CartMovies(
                  imageUrl: 'assets/top2.png',
                  title: 'Joker',
                  rating: 'assets/rating2.png',
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(defaultMargin),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Tv Series',
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: medium,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'See more',
                      style: grey3TextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(),
                      ),
                    );
                  },
                  child: CartTv(
                    imageUrl: 'assets/tv1.png',
                    genre: 'Drama',
                    title: 'Behind Her Eyes',
                    rating: 'assets/rating2.png',
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                CartTv(
                  imageUrl: 'assets/tv2.png',
                  genre: 'Crime',
                  title: 'Money Heist',
                  rating: 'assets/rating3.png',
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: bottomBarColor,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/bottom1.png',
              width: 18,
              height: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/bottom2.png',
              width: 24,
              height: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/bottom3.png',
              width: 24,
              height: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/bottom4.png',
              width: 24,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
