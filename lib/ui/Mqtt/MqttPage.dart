import 'package:checkair/ui/Mqtt/MqttBloc.dart';
import 'package:checkair/ui/Mqtt/WidgetsStream/GreenStatus.dart';
import 'package:checkair/ui/Mqtt/WidgetsStream/RedRow.dart';
import 'package:checkair/ui/Mqtt/WidgetsStream/YellowRow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MqttPage extends StatefulWidget {
  MqttPage({
    Key key,
  }) : super(key: key);

  @override
  _MqttPageState createState() => _MqttPageState();
}

MqttBloc bloc = MqttBloc();

class _MqttPageState extends State<MqttPage> {
  @override
  void initState() {
    bloc.connect();
    super.initState();
  }

  double defaultScreenWidth = 360.0;
  double defaultScreenHeight = 712.0;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);


     

    return SafeArea(
          child: Scaffold(
        body: Stack(
          children: <Widget>[
            StreamBuilder(
                stream: bloc.output,
                builder: (context, snapshot) {
                  if (bloc.co <= 99) {
                    return Image.asset(
                      "assets/images/green.jpg",
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      fit: BoxFit.cover,
                    );
                  } else if ((bloc.co >= 100) && (bloc.co <= 500)) {
                    return Image.asset(
                      "assets/images/yellow.jpg",
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      fit: BoxFit.cover,
                    );
                  } else if ((bloc.co > 500) && (bloc.co <= 1000)) {
                    return Image.asset(
                      "assets/images/red.jpg",
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      fit: BoxFit.cover,
                    );
                  }
                  return Container();
                }),
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
               StreamBuilder(
                   stream: bloc.output,
                   builder: (context, snapshot) {
                     if (bloc.co <= 99) {
                       return GreenRow();
                     } else if ((bloc.co >= 100) && (bloc.co <= 500)) {
                       return yellowRow();
                     } else if ((bloc.co > 500) && (bloc.co <= 1000)) {
                       return redRow();
                     }
                     return Container();
                   }),
               SizedBox(
                 height: ScreenUtil.instance.setHeight(230),
               ),
               Container(
                 width: ScreenUtil.instance.setWidth(270),
                 child: Text("Quantidade de monoxido de carbono no seu ar:",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       color: Colors.white,
                       fontFamily: 'Qnelas',
                       fontSize: ScreenUtil.instance.setSp(23),
                     )),
               ),
               StreamBuilder(
                   stream: bloc.output,
                   builder: (context, snapshot) {
                     return Padding(
                       padding: EdgeInsets.only(top: 20,),
                       child: RichText(
                         text: TextSpan(
                             style: TextStyle(
                               color: Colors.white,
                               fontFamily: 'Qnelas',
                               fontSize: ScreenUtil.instance.setWidth(67),
                             ),
                             children: [
                               TextSpan(text: "${bloc.co.truncate()} "),
                               TextSpan(
                                   text: "PPM ",
                                   style:
                                       TextStyle(fontWeight: FontWeight.bold)),
                             ]),
                       ),
                     );
                   }),
            ],
            ),
            Positioned(
              // top: ScreenUtil.instance.setWidth(570),
              // left: ScreenUtil.instance.setWidth(187),
              right: 0,
              bottom:-70,
              child: Image.asset(
                "assets/images/logo-checkair.png",
                width: ScreenUtil.instance.setWidth(170),
                height: ScreenUtil.instance.setHeight(170),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
