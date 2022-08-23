import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  

  @override
  Widget build(BuildContext context) {
    Text _buildRatingStars(int rating) {
      String stars = '';
      for (int i = 0; i < rating; i++) {
        stars += '⭐ ';
      }
      stars.trim();
      return Text(stars);
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.only(left: 20),
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10, bottom: 20),
            child: Row(
              children: [
                CircleAvatar(radius: 22, child: Image.asset('images.png')),
                const SizedBox(
                  width: 250,
                ),
                const Icon(
                  Icons.search_outlined,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 30,
                ),
                const Icon(
                  Icons.notifications_none_rounded,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          const Text(
            'Explore',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'We hope you find what you',
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.normal,
                color: Colors.grey),
          ),
          const Text(
            'come for',
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.normal,
                color: Colors.grey),
          ),
          const Text(
            '------',
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.normal,
                color: Colors.grey),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              children: const [
                Text(
                  'Category',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  width: 200,
                ),
                Text(
                  'See all ',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: Colors.blue),
                ),
                Icon(
                  Icons.keyboard_arrow_right_rounded,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          Column(children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        top: 10, right: 50, left: 10, bottom: 15),
                    width: 100,
                    height: 90,
                    margin: const EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue[300],
                    ),
                    child: Column(
                      children: const [
                        Icon(Icons.all_inbox_rounded),
                        SizedBox(
                          height: 10,
                        ),
                        Text('All'),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        top: 5, right: 50, left: 10, bottom: 20),
                    width: 100,
                    height: 90,
                    margin: const EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey,
                    ),
                    child: Column(
                      children: const [
                        Icon(Icons.traffic_outlined),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Hiking trips',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        top: 5, right: 50, left: 10, bottom: 15),
                    width: 110,
                    height: 90,
                    margin: const EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue[100],
                    ),
                    child: Column(
                      children: const [
                        Icon(Icons.train_sharp),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'City tours',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              children: const [
                Text(
                  'Recomendation',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  width: 130,
                ),
                Text(
                  'See all ',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: Colors.blue),
                ),
                Icon(
                  Icons.keyboard_arrow_right_rounded,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Row(children: [
            Stack(
              children: <Widget>[
                Container(
                  height: 200,
                  // height: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Hero(
                    tag: 'Image',
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: const Image(
                        image: AssetImage('Recomended.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20.0,
                  // bottom: 20.0,
                  top: 20.0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(100)),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: const <Widget>[
                            Icon(
                              Icons.star,
                              size: 20.0,
                              color: Colors.white70,
                            ),
                            SizedBox(width: 5.0),
                            Text(
                              '4.8',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 20.0,
                  top: 20.0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(100)),
                    padding: const EdgeInsets.all(8),
                    child: const Icon(
                      Icons.star_border_outlined,
                      color: Colors.white70,
                      size: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Stack(
              children: <Widget>[
                Container(
                  height: 200,
                  // height: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Hero(
                    tag: 'Image',
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: const Image(
                        image: AssetImage('Recomended1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20.0,
                  // bottom: 20.0,
                  top: 20.0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          style: BorderStyle.solid,
                        )),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: const <Widget>[
                            Icon(
                              Icons.star,
                              size: 20.0,
                              color: Colors.white70,
                            ),
                            SizedBox(width: 5.0),
                            Text(
                              '4.8',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 20.0,
                  top: 20.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Icon(
                      Icons.star_border_outlined,
                      color: Colors.white70,
                      size: 25.0,
                    ),
                  ),
                ),
              ],
            ),
          ]),
          Container(
            margin: const EdgeInsets.only(top: 10),
            alignment: Alignment.topCenter,
            child: Row(
              children: const [
                Text(
                  'Popular Places',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  width: 140,
                ),
                Text(
                  'See all ',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: Colors.blue),
                ),
                Icon(
                  Icons.keyboard_arrow_right_rounded,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
