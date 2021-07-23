import 'package:flutter/material.dart';

class DicePage extends StatelessWidget {
  const DicePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[700],
        title: Text("Dice"),
        centerTitle: true,
      ),
      backgroundColor: Colors.amber[600],
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Image(
                      image: NetworkImage("https://raw.githubusercontent.com/icodingchef/login_dice/master/image/dice1.png"),
                      width: 300,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Image(
                      image: NetworkImage("https://raw.githubusercontent.com/icodingchef/login_dice/master/image/dice2.png"),
                      width: 300,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ButtonTheme(
              child: OutlinedButton(
                onPressed: (){}, 
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                child: Icon(
                  Icons.play_arrow,size: 50,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
