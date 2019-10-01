
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  PageOne({Key key}) : super(key: key);

  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
          children: <Widget>[
            Image.asset("assets/images/bgone.jpg", width: double.infinity, height: double.infinity, fit: BoxFit.cover),
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
                          TextSpan(text: "Monoxido ", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "de carbono uma"),
                          TextSpan(text: " morte ", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "sem barulho"),
                        ]
                      ),
                    ),
                  )
                )
              ],
            ),
          ],
      ),
    );
  }
}
