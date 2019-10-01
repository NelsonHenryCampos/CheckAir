import 'package:checkair/ui/SlidePages/ButtonNext.dart';
import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  PageThree({Key key}) : super(key: key);

  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Image.asset("assets/images/bgtree.jpg", width: double.infinity, height: double.infinity, fit: BoxFit.cover),
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
                    width: 300,
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Qnelas',
                          fontSize: 25,
                        ),
                        children: [
                          TextSpan(text: "Alguns "),
                          TextSpan(text: "Aparelhos ", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "emitem o "),
                          TextSpan(text: "monoxido de carbono, ", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "os mais "),
                          TextSpan(text: "comuns ", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "de acontecerem sao os "),
                          TextSpan(text: "ar condicionado ", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "de "),
                          TextSpan(text: "casa ", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "ou "),
                          TextSpan(text: "carro ", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "e "),
                          TextSpan(text: "aquecedores ", style: TextStyle(fontWeight: FontWeight.bold)),
                        ]
                      ),
                    ),
                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Center(child: ButtonNext()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}