import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  PageTwo({Key key}) : super(key: key);

  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Image.asset("assets/images/bgtwo.jpg", width: double.infinity, height: double.infinity, fit: BoxFit.cover),
            Opacity(
              opacity: 0.5,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black,
              ),
            ),
            Positioned(
                  bottom: 387,
                  right: 2,
                  child: Image.asset("assets/images/logo-checkair.png", width: 370, height: 370,),
                ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Container(
                    width: 270,
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Qnelas',
                          fontSize: 25,
                        ),
                        children: [
                          TextSpan(text: "Mas com o "),
                          TextSpan(text: "CheckAir, ", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "ele pode te "),
                          TextSpan(text: "alertar ", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "e te manter "),
                          TextSpan(text: "seguro. ", style: TextStyle(fontWeight: FontWeight.bold)),
                        ]
                      ),
                    ),
                  )
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}