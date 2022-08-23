import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  Info({Key? key}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Image.asset(
            'img.jpg',
            fit: BoxFit.fitWidth,
          ),
          SizedBox(height: 5),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Color.fromARGB(95, 27, 27, 27),
                    ),
                    Text(
                      'Europe, Norway',
                      style: TextStyle(color: Color.fromARGB(95, 27, 27, 27)),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 250),
                      margin: EdgeInsets.only(top: 20),
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(50),
                      //   color: Colors.black,
                      // ),
                      width: 10,

                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                style: BorderStyle.solid,
                                color: Colors.red,
                                width: 2)),
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.star_border_outlined,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 0),
                Row(
                  children: [
                    Text(
                      'Skudeneshavn',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text('   4.9 (1689 reviews)')
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    Text(
                      'The northernmost state is Europe, the',
                      style: TextStyle(color: Color.fromARGB(95, 27, 27, 27)),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      'Kingdom of Norway is know for the beauty of its',
                      style: TextStyle(color: Color.fromARGB(95, 27, 27, 27)),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      'mountain ranges and fjords that encircle the northern',
                      style: TextStyle(color: Color.fromARGB(95, 27, 27, 27)),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      'part of its western coast.',
                      style: TextStyle(color: Color.fromARGB(95, 27, 27, 27)),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      'Read more',
                      style: TextStyle(color: Colors.blue),
                    ),
                    Icon(
                      Icons.arrow_drop_down_outlined,
                      color: Colors.blue,
                    )
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          top: 8, left: 38, right: 38, bottom: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          border: Border.all(
                              color: Color.fromARGB(255, 101, 101, 104))),
                      child: Text(
                        'Overview',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(width: 35),
                    Text(
                      'Hotels',
                      style: TextStyle(),
                    ),
                    SizedBox(width: 35),
                    Text(
                      'Restaurants',
                      style: TextStyle(),
                    )
                  ],
                ),
                SizedBox(height: 25),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: const [
                      Text(
                        'Stay',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        width: 225,
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
                SizedBox(height: 13),
                Row(
                  children: [
                    Text('popular places to stay and spend time',
                        style:
                            TextStyle(color: Color.fromARGB(95, 27, 27, 27))),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text('with benefit.',
                        style:
                            TextStyle(color: Color.fromARGB(95, 27, 27, 27))),
                  ],
                ),
                SizedBox(height: 15),
                Center(
                  child: FloatingActionButton.extended(
                    label: Text('View map'), // <-- Text
                    backgroundColor: Colors.blue,
                    icon: Icon(
                      // <-- Icon
                      Icons.map,
                      size: 24.0,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
