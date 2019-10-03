import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GreenRow extends StatelessWidget {
  const GreenRow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultScreenWidth = 360.0;
    double defaultScreenHeight = 712.0;

    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(100)),
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
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: "Tudo Seguro"),
              ]),
        ),
      ],
    );
  }
}
