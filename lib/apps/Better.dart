import 'package:flutter/material.dart';
import 'dart:math';

class Better extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<Better> {
  int _counter = 0;
  var _blah = 'Mutaz is better than you by:';
  String buttonText ='Random';

  void _incrementCounter() {
    setState(() {
      for (int i = 0; i < 5; i++){
        _counter++;
      }
      if (_counter > 100){
        _counter = 100;
      }
    });
  }
  void _decreaseCounter() {
    setState(() {
      for (int i = 0; i < 5; i++) {
        _counter--;
      }
      if (_counter < 0){
        _counter = 0;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Better?'),
        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Languge:',style: TextStyle(fontSize: 40.0) ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Default'),
                onTap: () {
                  setState(() {
                    _blah = 'Mutaz is better than you by:';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Arabic'),
                onTap: () {
                  setState(() {
                    _blah = ': معتز أفضل منك';
                    buttonText ='عشوائية';
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                '$_blah',
                style: TextStyle(fontSize: 18.0),
              ),
              new Text(
                '$_counter' "%",
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
        ),
        floatingActionButton: Stack(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left:31),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: FloatingActionButton(
                  heroTag: "btn1",
                  onPressed: _decreaseCounter,
                  child: Icon(Icons.remove),),
              ),),

            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                heroTag: "btn2",
                onPressed: _incrementCounter,
                child: Icon(Icons.add),),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: FlatButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.blueAccent,
                  onPressed: (){
                    var rng = new Random();
                    var nah = new List.generate(1, (_) => rng.nextInt(100));
                    setState(() {
                      _counter = nah[0];
                    });
                  },
                  child: Text(
                    "$buttonText",
                    style: TextStyle(fontSize: 20.0),
                  )
              ),
            ),
          ],
        )
    );
  }
}