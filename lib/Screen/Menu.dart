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
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.purple,
            height: MediaQuery.of(context).size.height*0.3,
            width: double.infinity,
            child: Padding(
              padding:const EdgeInsets.all(8.0),
              
            child: Column(
              children: <Widget>[
                Stack(children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                ),
                Positioned(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    
                    radius: 15,
                    child: Icon(Icons.edit),))
                ],
                ),
                // CircleAvatar(
                //   radius: 50,
                //   backgroundColor: ,
                
                SizedBox(
                  height: 10,
                ),
                Text("varsha jadhav",
                style: TextStyle(fontSize: 18,color: Colors.white),
               ),
                
                SizedBox(height: 5 ,
                ),
                Text(
                  "@varshajadhav",
                  style: TextStyle(fontSize: 16,color: Colors.white
                  ),
              
                ),
              ]
              ),
          ),
          
          ),
          Card(
            child:Container(
              padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
              Column(
                children: <Widget>[
                Text("photos"),
                SizedBox(height: 5,
                ),
                Text("123"),
                ],
              ),
              Column(
                children: <Widget>[
                  Text("Followers"),
                  SizedBox(height: 5,
                  ),
                  Text("1234")
                  ],
            ),
            Column(
                children: <Widget>[
                  Text("Following"),
                  SizedBox(height:5,
                  ),
                  Text("12345")
                  ],
          ),
              ],
            ),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
            Text("User information"),
            Divider(),
            ListTile(title: Text("Location"),subtitle: Text("Kathmandu,Nepal"),leading: Icon(Icons.location_on),
            ),
            ListTile(title: Text("Email"),subtitle: Text("Kathmandu123@gmail.com,Nepal"),leading: Icon(Icons.email),
 
          ),
          ListTile(title: Text("Location"),subtitle: Text("7350203821"),leading: Icon(Icons.phone),
 ),
              ],
        
      ),
          ),
      
      ],
    ),
    );
  }
}
        
    
    
      
      
    
    
    
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0.0,
//         title: Text("Profile Page",style: TextStyle(color: Colors.black),),
//       ),
//       body: Center(child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           CircleAvatar(child: Image.asset('images.png')
//           ),
//           SizedBox(height: 20.0,
//           ),
//           Text("varsha",
//           style: TextStyle(color: Colors.black,
//           fontWeight: FontWeight.bold,
//           fontSize: 18, ),
//           ),
//           SizedBox(
//             height: 12.0,
//           ),
          

//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Expanded(child: Column(children: [
//                 Text("Followers",style: TextStyle(fontWeight: FontWeight.bold,
//                 fontSize:18.0 ),),
//                 Text("255k",style: TextStyle(fontSize: 16.0, ),)
//               ],))

//             ],

//           )
//         ],
//         ),
//       ),
//         );
//      //CircleAvatar(child: Image.asset('images.png')),);
//   }
// }
