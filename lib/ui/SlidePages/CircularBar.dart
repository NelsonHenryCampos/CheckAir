import 'package:checkair/ui/SlidePages/PageOne.dart';
import 'package:checkair/ui/SlidePages/PageThree.dart';
import 'package:checkair/ui/SlidePages/PageTwo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';
import 'package:transformer_page_view/transformer_page_view.dart';

class CircularBar extends StatefulWidget {
  CircularBar({Key key}) : super(key: key);

  _CircularBarState createState() => _CircularBarState();
}

class _CircularBarState extends State<CircularBar> {
  double size = 10.0;
  double activeSize = 30.0;

  PageController controller;

  PageIndicatorLayout layout = PageIndicatorLayout.SLIDE;

  List<PageIndicatorLayout> layouts = PageIndicatorLayout.values;

  bool loop = false;

  @override
  void initState() {
    controller = new PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var children = <Widget>[
      PageOne(),
      PageTwo(),
      PageThree(),
    ];
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: <Widget>[
          Expanded(
              child: Stack(
            children: <Widget>[
              loop
                  ? TransformerPageView.children(
                      children: children,
                      pageController: controller,
                    )
                  : PageView(
                      controller: controller,
                      children: children,
                    ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: PageIndicator(
                    layout: PageIndicatorLayout.WARM,
                    size: size,
                    activeSize: activeSize,
                    controller: controller,
                    space: 5.0,
                    count: 3,
                  ),
                ),
              )
            ],
          ))
        ],
      )),
    );
  }
}
