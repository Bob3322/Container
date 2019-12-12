import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'caculator.dart';
import 'Better.dart';
import 'chatbot.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
class Container1 extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Projects'),
        ),
          backgroundColor: Colors.black54,
        body: AnimationLimiter(
    child: ListView.builder(
    itemCount: 5,
    itemBuilder: (BuildContext context, int index) {
    return AnimationConfiguration.staggeredList(
    position: index,
    duration: const Duration(milliseconds: 375),
    child: SlideAnimation(
    verticalOffset: 100.0,
    child: FadeInAnimation(
    child:new Center(
            child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new RaisedButton(
                onPressed: (){Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeftWithFade, child: Caculator()));},
                color: Colors.amberAccent,
                child: Text('Caculator'),
              ),
              new RaisedButton(
                onPressed: (){Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeftWithFade, child: Better()));},
                color: Colors.greenAccent,
                child: Text('Better?'),
              ),
              new RaisedButton(
                onPressed: (){Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeftWithFade, child: HomePageDialogflow()));},
                color: Colors.redAccent,
                child: Text('Chat'),
              ),
            ]
              ),
          ),
    ),
    ),
    );
    },
    ),
        ),
    );
  }
  }