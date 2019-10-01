import 'package:flutter/material.dart';

class RedPage extends StatefulWidget {
  RedPage({Key key}) : super(key: key);

  _RedPageState createState() => _RedPageState();
}

class _RedPageState extends State<RedPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Image.asset("assets/images/red.jpg",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover),
            Opacity(
              opacity: 0.5,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black,
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, bottom: 27),
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(100)),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 300,
                            child: RichText(
                              softWrap: true,
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Qnelas',
                                    fontSize: 22,
                                  ),
                                  children: [
                                    TextSpan(
                                        text: "Status: ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                      text: "Saia dai!, ",
                                    ),
                                    TextSpan(
                                      text: "voce corre ",
                                    ),
                                    TextSpan(
                                      text: "risco de vida",
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 215,
                ),
                Container(
                  width: 270,
                  child: Text("Quantidade de monoxido de carbono no seu ar:",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Qnelas',
                        fontSize: 23,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: RichText(
                    text: TextSpan(
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Qnelas',
                          fontSize: 67,
                        ),
                        children: [
                          TextSpan(text: "986 "),
                          TextSpan(
                              text: "PPM ",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ]),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 570,
              left: 187,
              child: Image.asset(
                "assets/images/logo-checkair.png",
                width: 170,
                height: 170,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
