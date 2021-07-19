import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Icon Menu"),
          centerTitle: true,
          
          actions: [
            IconButton(
              onPressed: (){

              }, 
              icon: Icon(Icons.search)
              
            ),
            
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage("https://download-hub.com/wp-content/uploads/2020/12/한컴타자연습-2020.png"),
                  backgroundColor: Colors.white,
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://ww.namu.la/s/e60230c3c3d03afebdd6aede0c428bf275bfbf9a79eed180148e378f967be6189d0b26a98b18002747943109805c4bb2ee89a046b6ecb599a8955e3bf3cb046ab25a6eac5ac17b1f0414aa98fde92fe2876a891f1ef24a8412fef3574aedb9a0"),
                  ),
                  // CircleAvatar( //여러개 가능
                  //   backgroundImage: NetworkImage("https://ww.namu.la/s/e60230c3c3d03afebdd6aede0c428bf275bfbf9a79eed180148e378f967be6189d0b26a98b18002747943109805c4bb2ee89a046b6ecb599a8955e3bf3cb046ab25a6eac5ac17b1f0414aa98fde92fe2876a891f1ef24a8412fef3574aedb9a0"),
                  // ),
                ],
                accountName: Text("sonmin"),
                accountEmail: Text("sonmin@gmail.com"),
                onDetailsPressed: (){
                  print("allow");
                },
                decoration: BoxDecoration(
                  color:  Colors.blue[600],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.grey[600],
                ),
                title: Text("Home"),
                onTap: () {
                  print("Home");
                },
              ),
            ],

          ),
          
        ),
      ),
    );
  }
}
