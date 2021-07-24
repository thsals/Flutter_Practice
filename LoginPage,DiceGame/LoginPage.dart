import 'package:flutter/material.dart';
import 'package:flutter_practice/DicePage.dart';

class LoginPage extends StatefulWidget {
  
  @override
  _LoginPageState createState() => _LoginPageState();
}
    TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
        
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.search)
          ),
        ],
                
      ),
      body: Column(
        
        children: [
          Padding(padding: EdgeInsets.only(top:60)),
          Center(
            
            child: Image(
              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf4iXwzn0hCbzGS8FwtX89pkDlm6yo2ZqMzQ&usqp=CAU"),
              width: 180,
              height: 180,
            ),
          ),
          SizedBox(
            height: 30,
          ),

          Card(
            margin: EdgeInsets.fromLTRB(25, 25, 25, 20),
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 15),
              child: Column(
                children: [
                  TextField(
                    controller: emailcontroller,
                    decoration: InputDecoration(
                      labelText: "Email",
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: passwordcontroller,
                    decoration: InputDecoration(
                      labelText: "Password",
                    ),
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ButtonTheme(
                    minWidth: 100,
                    height: 100,
                    child: ElevatedButton(
                    onPressed: (){
                      if(emailcontroller.text == "test" && passwordcontroller.text == "1234") {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => DicePage()));
                      }
                      else if(emailcontroller.text != 'test'|| passwordcontroller.text != '1234') {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('ID또는 비밀번호 오류'),
                            duration: Duration(seconds: 2),
                            backgroundColor: Colors.redAccent,
                          )
                        );
                      }
                    }, 
                    child: 
                      Text("Login"),
                    
                    ),
                  ),
                ],
              ),
            ), 
          ),
        ],
      ),
      drawer: Drawer(
        
      ),
    );
  }
}
