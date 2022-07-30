import 'package:flutter/material.dart';
import 'package:catalogapp2/utils/routes.dart';

class LoginPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/undraw_secure_login_pdn4.png",
            fit: BoxFit.cover,

            ),
            SizedBox(
              height: 21.0,
            ),
            Text("Welcome" , style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Email",
                      labelText: "Email",
                    ),
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

                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context,MyRoutes.homeRoute);
                  }, child: Text("Login"),
                  style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
