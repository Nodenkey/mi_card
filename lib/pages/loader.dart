import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loader extends StatefulWidget {
  @override
  _LoaderState createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 10), () {
      Navigator.of(context).pop('/');
    });
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SpinKitDoubleBounce(
            color: Colors.black,
            size: 70.0,
          ),
          SizedBox(
            height: 150.0,
          ),
          Text(
            'Creating your card...',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          )
        ],
      )),
    );
  }
}
