import 'package:flutter/material.dart';

class ButtonNext extends StatelessWidget {
  const ButtonNext({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return Material(
      borderRadius: BorderRadius.circular(40),
      elevation: 5,
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 150,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Center(
            child: Text("Next", style: TextStyle(
              color: Colors.black,
              fontSize: 21,
              fontFamily: "Qnelas",
              fontWeight: FontWeight.bold,
            )),
          ),
        ),
      ),
    );
  }

}

