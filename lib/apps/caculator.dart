import 'package:flutter/material.dart';
class Caculator extends StatefulWidget{
  @override
  _Lol createState() => new _Lol();
}

class _Lol extends State<Caculator> {
  final  myController = TextEditingController();
  final _myController = TextEditingController();
  int _counter = 0;
  String what = 'plus';

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  void  _incrementCounter() {
    int loli = int.parse(myController.text);
    int _loli = int.parse(_myController.text);
    setState(() {
      if(what == 'plus') {
        _counter = loli + _loli;
      }else if(what == "minus"){
        _counter = loli - _loli;
      }else if(what == "times"){
        _counter =  loli * _loli;
      }else if(what == "divide"){
        _counter = loli  ~/ _loli;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.red,
        appBar: new AppBar(
          title: new Text(''),
          backgroundColor: Colors.blue,
        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Languge:',style: TextStyle(fontSize: 40.0) ),
                decoration: BoxDecoration(
                  color: Colors.cyan,
                ),
              ),
              ListTile(
                title: Text('Plus'),
                onTap: () {
                  setState(() {
                    what = 'plus';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Minus'),
                onTap: () {
                  setState(() {
                    what = 'minus';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Times'),
                onTap: () {
                  setState(() {
                    what = 'times';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Divide'),
                onTap: () {
                  setState(() {
                    what = 'divide';
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
              new TextField(
                controller: myController,
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  fillColor: Colors.white,
                  hoverColor: Colors.white,
                  border: InputBorder.none,
                  hintText: 'Number 1',
                ),
              ),
              new Text(
                  '\n'
              ),
              new TextField(
                controller: _myController,
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  fillColor: Colors.white,
                  hoverColor: Colors.white,
                  border: InputBorder.none,
                  hintText: 'Number 2',
                ),
              ),
              new Text(
                '\n \n \n'
                    '$_counter',
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
                  onPressed: _incrementCounter,
                  child: Icon(Icons.add),),
              ),
            ),
          ],
        )
    );
  }
}