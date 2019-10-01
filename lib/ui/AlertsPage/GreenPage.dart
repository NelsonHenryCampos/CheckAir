import 'package:flutter/material.dart';

class GreenPage extends StatefulWidget {
  GreenPage({Key key}) : super(key: key);

  _GreenPageState createState() => _GreenPageState();
}

class _GreenPageState extends State<GreenPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Image.asset("assets/images/green.jpg",
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(100)),
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Qnelas',
                              fontSize: 24,
                            ),
                            children: [
                              TextSpan(
                                  text: "Status: ",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: "Tudo Seguro"),
                            ]),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 230,
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
                          TextSpan(text: "337 "),
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
