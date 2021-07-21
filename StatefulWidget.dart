import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {  
  @override
  State<StatefulWidget> createState() {
    return _MyappState();
  }
}

class _MyappState extends State<Myapp> {
  int cnt = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: Text("Stf Widget"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$cnt'
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
          onPressed: () {
            setState(() {
             cnt++;
            
            }); 

          },
          child: Icon(Icons.add),
        ),
        SizedBox(
          width: 30,
        ),
        FloatingActionButton(
          onPressed: () {
            setState(() {
             cnt--;
              
            });

          },
          child: Icon(Icons.minimize),
        ),
                ],
              )
            ],
            
          ),
        ),
      ),
      
    );
  }
}
