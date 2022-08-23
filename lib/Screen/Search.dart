import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  int index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                width: 410,
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.only(left: 15, right: 30),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 1.0),
                      prefixIcon: const Icon(Icons.search),
                      hintText: "OSlo",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(),
                      )),
                ),
              ),
              Icon(Icons.settings_applications_sharp),
              SizedBox(
                width: 5,
              ),
              Text(
                'Filters',
                style: TextStyle(fontSize: 15),
              )
            ],
          ),

          //      Row(
          //        children: [
          //            Icon(
          //             Icons.location_on,
          //                 color: Color.fromARGB(95, 27, 27, 27),
          //     ),
          // ],
          //
          //
          //
          //     ),
          // ],
          // ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Sort by :'),
                    Text(
                      '  Price',
                      style: TextStyle(color: Colors.blue),
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 300),
                        child: Icon(Icons.account_box_rounded)),
                    Container(
                        padding: EdgeInsets.only(left: 3),
                        child: Icon(Icons.account_box_rounded)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset(
                      'search1.jpg',
                      width: 480,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Amerikalinjen',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 290),
                      child: Text(
                        '\$238',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Text(
                      '  per night',
                      style: TextStyle(
                        color: Color.fromARGB(95, 27, 27, 27),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Color.fromARGB(95, 27, 27, 27),
                    ),
                    Text(
                      'Norway, Oslo',
                      style: TextStyle(color: Color.fromARGB(95, 27, 27, 27)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset(
                      'search3.jpg',
                      width: 480,
                      height: 325,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Hotel Bristol',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 290),
                      child: Text(
                        '\$219',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Text(
                      '  per night',
                      style: TextStyle(
                        color: Color.fromARGB(95, 27, 27, 27),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
