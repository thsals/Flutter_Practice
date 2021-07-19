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
          backgroundColor: Colors.red[300],
          appBar: AppBar(
            title: Text("sonmin"),
            centerTitle: true,
            backgroundColor: Colors.red[200],
            elevation: 0.0,
          ),
          body: Padding(
            padding: EdgeInsets.fromLTRB(30,40,0,0),
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              
              children: [
                Center(
                  child: 
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage("https://download-hub.com/wp-content/uploads/2020/12/한컴타자연습-2020.png"),
                    radius: 90,
                    
                  ),
                  
                ),
                Divider(
                  height: 60,
                  color: Colors.grey,
                  thickness: 0.7,
                  endIndent: 30,
                  
                ),
                Text( 
                  "Text",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 50,

                  ),

                ),
                
                Text(
                  "name",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Icon(Icons.add_circle_outline),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Add",
                      style: 
                      TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
              
            ),
            
          ),
        ),
    );
  }
}
