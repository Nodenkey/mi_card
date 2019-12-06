import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String name;
  final String job;
  final String num;
  final String mail;

  Display(this.name, this.job, this.num, this.mail);

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage('images/me.jpg'),
            ),
            Text(
              name,
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Pacifico', fontSize: 30),
            ),
            Text(
              job.toUpperCase(),
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
              margin: EdgeInsets.symmetric(horizontal: 30.0),
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
              margin: EdgeInsets.all(30.0),
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
    );
  }
}
