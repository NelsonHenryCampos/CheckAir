import 'package:flutter/material.dart';

Widget redRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 8.0, bottom: 27),
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(100)),
        ),
      ),
      Container(
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
                    style: TextStyle(fontWeight: FontWeight.bold)),
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
    ],
  );
}
