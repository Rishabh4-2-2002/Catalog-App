import 'package:flutter/material.dart';
import 'package:catalogapp2/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "images/undraw_secure_login_pdn4.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 21.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Name",
                      labelText: "Name",
                    ),
                    onChanged: (value){
                      setState(() {
                        name = value;
                      });
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  //creating your own button
                  InkWell(
                    onTap: () async{
                    setState(() {
                      changeButton=true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: (changeButton)? 50:150,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButton? Icon(Icons.done,color:Colors.white) : Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(changeButton?50:8),
                      ),
                    ),
                  ),

                  // ElevatedButton(onPressed: (){
                  //   Navigator.pushNamed(context,MyRoutes.homeRoute);
                  // }, child: Text("Login"),
                  // style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
