import 'package:flutter/material.dart';
import 'package:catalogapp2/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  //for form validation add form key
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async{

    if(_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "images/undraw_hey_email_liaa.png",
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
                      validator: (value){
                        if(value!.isEmpty){
                          return "please enter your name";
                        }
                        return null;
                      },
                      onChanged: (value) {
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
                      validator: (value){
                        if(value!.isEmpty){
                          return "Password cannot be enpty";
                        }else if(value.length<6){
                          return "Password length should atleast be 6";
                        }
                        return null; // denotes that there is no problem
                      },
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    //creating your own button
                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          width: (changeButton) ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: changeButton
                              ? Icon(Icons.done, color: Colors.white)
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
