import 'package:flutter/material.dart';
import 'skell.dart';
import 'package:equinox/equinox.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new EquinoxApp(
      theme: EqThemes.defaultDarkTheme,
      home: new MyHomePage(),
      title: '',
    );
  }
}
