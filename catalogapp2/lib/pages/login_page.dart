import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
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
          ),)

        ],
      ),
    );
  }
}
