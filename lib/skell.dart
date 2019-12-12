import 'package:aa/apps/Container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix2;
import 'package:page_transition/page_transition.dart';
import 'package:vibration/vibration.dart';
import 'package:equinox/equinox.dart';
class  MyHomePage extends StatefulWidget {
  @override
   _MyHomePage createState() =>  _MyHomePage();
}
class _MyHomePage extends State< MyHomePage> {
  final  hisController = TextEditingController();
  final  himController = TextEditingController();
  @override
  void dispose() {
    himController.dispose();
    himController.dispose();
    super.dispose();
  }
  String lax = 'Submit';
  @override
  Widget build(BuildContext context) {
    return EqLayout(
      appBar: EqAppBar(
        centerTitle: true,
        title: 'Log in',
      ),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(
              controller: hisController,
              decoration: InputDecoration(
                focusColor: prefix2.Colors.grey,
                fillColor: prefix2.Colors.grey,
                hoverColor: prefix2.Colors.grey,
                border: InputBorder.none,
                hintText: 'Username',
                hintStyle: TextStyle(color: prefix2.Colors.white)
              ),
              style: TextStyle(color: prefix2.Colors.white)
            ),
            new Text(
                '\n'
            ),
            new TextField(
              controller: himController,
              decoration: InputDecoration(
                focusColor: prefix2.Colors.grey,
                fillColor: prefix2.Colors.grey,
                hoverColor: prefix2.Colors.grey,
                border: InputBorder.none,
                hintText: 'Password',
                  hintStyle: TextStyle(color: prefix2.Colors.white)
              ),
                style: TextStyle(color: prefix2.Colors.white)
            ),
            new Text(
              '\n \n \n'
            ),
            new EqButton( appearance: EqWidgetAppearance.ghost, onTap: () {
              String Word = hisController.text;
              String _Word = himController.text;
              setState(() {
              if (Word == 'me'&& _Word == 'best'){
                Navigator.push(context, PageTransition(type: PageTransitionType.downToUp, child: Container1()));
              }
              else{
                Vibration.vibrate(pattern: [50, 500, 50, 500]);
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      titleTextStyle: TextStyle(color: prefix2.Colors.white),
                      contentTextStyle: TextStyle(color: prefix2.Colors.white),
                      backgroundColor: prefix2.Colors.black,
                      title: new Text("Error"),
                      content: new Text("Incorrect password or username"),
                      actions: <Widget>[
                        new EqButton(
                          label: new Text("Close"),
                          appearance: EqWidgetAppearance.ghost,
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          size: EqWidgetSize.large,
                          status: EqWidgetStatus.primary,
                        ),
                      ],
                    );
                  },
                );
              }
              });
            },
              label: Text('Log in'),
              size: EqWidgetSize.large,
              status: EqWidgetStatus.primary,
            )
          ],
        ),
      ),
    );
  }
  }