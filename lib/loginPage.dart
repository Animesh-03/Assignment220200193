import 'package:flutter/material.dart';

import './greeting.dart';

TextEditingController idController = new TextEditingController();

class LoginPage extends StatefulWidget {
  @override
  createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final Color primaryColor = Color(0xff2FC4B2);
  final Color formFieldsColor = Colors.grey.withOpacity(0.3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "CRUX FLUTTER",
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 40,
                        height: 3.55,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SUMMER GROUP",
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 40,
                        fontWeight: FontWeight.w900),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                child: Form(
                  key: formKey,
                  child: Padding(
                    padding: EdgeInsets.only(top: 60),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ID Number",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w800),
                        ),
                        TextFormField(
                          controller: idController,
                          decoration: InputDecoration(
                              hintText: "Please Enter Your Student ID",
                              fillColor: formFieldsColor,
                              filled: true),
                        ),
                        Text("Password",
                            style: TextStyle(
                                fontSize: 15,
                                height: 3,
                                fontWeight: FontWeight.w800)),
                        TextFormField(
                            decoration: InputDecoration(
                                hintText: "Enter Your Password",
                                fillColor: formFieldsColor,
                                filled: true)),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Center(
                            child: ElevatedButton(
                              child: Text(
                                "LOG IN",
                                style: TextStyle(fontSize: 20),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: primaryColor,
                                  elevation: 2,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 110)),
                              onPressed: () {
                                var route = new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        new GreetingsScreen(idController.text));
                                Navigator.of(context).push(route);
                              },
                            ),
                          ),
                        ),
                        Center(
                          child: TextButton(
                            child: Text(
                              "Forgot Password ?",
                              style: TextStyle(color: primaryColor),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 60),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have an account ?"),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/register');
                                  },
                                  child: Text(
                                    "Register",
                                    style: TextStyle(
                                        color: primaryColor, fontSize: 18),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
