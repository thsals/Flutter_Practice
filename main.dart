import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "practice",
        home: Scaffold(
          backgroundColor: Colors.lightGreen,
          appBar: AppBar(
            title: Text("sonmin"),
            centerTitle: true,
            backgroundColor: Colors.red[200],
            elevation: 0.0,
          ),
          body: Padding(
            padding: EdgeInsets.fromLTRB(50,30,20,10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(""),
                ),
                Text( 
                  "Text",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 50,

                  ),

                ),
                SizedBox(
                  height: 0,
                ),

                Text(
                  "name",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                  ),
                ),
                
              ],
            ),
          ),
        ),
    );
  }
}
