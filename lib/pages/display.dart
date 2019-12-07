import 'dart:io';

import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String name;
  final String job;
  final String num;
  final String mail;
  final File imageFile;

  Display(this.name, this.job, this.num, this.mail, this.imageFile);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('images/rocks.jpg'))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 80,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage(imageFile.path),
              ),
              Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Pacifico', fontSize: 30),
              ),
              Text(
                job.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
              Divider(
                height: 30,
                thickness: 1.0,
                indent: 120,
                endIndent: 120,
                color: Colors.white70,
              ),
              Card(
                elevation: 20,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text(
                    num,
                  ),
                ),
              ),
              Card(
                elevation: 20,
                margin: EdgeInsets.symmetric(vertical: 30.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.mail),
                  title: Text(
                    mail,
                  ),
                ),
              ),
              Text('In progress...', style: TextStyle(color: Colors.white70))
            ],
          ),
        ),
      ),
    );
  }
}
