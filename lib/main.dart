import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mi_card/pages/details.dart';
import 'package:mi_card/pages/loader.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => Details(),
          '/loader': (BuildContext context) => Loader()
//          '/display': (BuildContext context) => Display()
        });
  }
}
