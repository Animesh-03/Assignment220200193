import 'package:flutter/material.dart';

class GreetingsScreen extends StatefulWidget {
  final String idNumber;
  GreetingsScreen(this.idNumber);
  @override
  createState() => GreetingsScreenState();
}

class GreetingsScreenState extends State<GreetingsScreen> {
  final Color primaryColor = Color(0xff2FC4B2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                      height: 5,
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
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "welcomes you",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60),
              child: Center(
                child: Text(
                  widget.idNumber,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60),
              child: Center(
                child: Text(
                  "Have a Great Journey Ahead!!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Center(
                child: ElevatedButton(
                  child: Text("LOG OUT", style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: primaryColor,
                      padding: EdgeInsets.symmetric(horizontal: 80)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
