import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text("Profile Page",style: TextStyle(color: Colors.black),),
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(child: Image.asset('images.png')
          ),
          SizedBox(height: 20.0,
          ),
          Text("varsha",
          style: TextStyle(color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18, ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Column(children: [
                Text("Followers",style: TextStyle(fontWeight: FontWeight.bold,
                fontSize:18.0 ),),
                Text("255k",style: TextStyle(fontSize: 16.0, ),)
              ],))

            ],

          )
        ],
        ),
      ),
        );
     //CircleAvatar(child: Image.asset('images.png')),);
  }
}
