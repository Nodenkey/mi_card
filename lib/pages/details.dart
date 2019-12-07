import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mi_card/pages/display.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController workController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  var name = '';
  var job = '';
  var num = '';
  var mail = '';
  File imageFile;
  var imgPath = '';

  var _pic = 'Select Pic';

  void onBtnPressed() {
    if (!_formKey.currentState.validate()) {
      print('fields cannot be empty');
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) =>
                  Display(name, job, num, mail, imageFile)));
    }
  }

  _pickImage(BuildContext context) async {
    imageFile = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      if (imageFile == null) {
        print('nothing selected');
      } else {
        _pic = 'Pic Selected';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Image.asset('images/logo.png'),
        title: Text(
          'Enter Details',
          style: TextStyle(fontFamily: 'Montserrat'),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 40.0, horizontal: 30.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                    // controller enables to interact with a field at a time
                    controller: nameController,
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 16.0,
                        fontFamily: 'Montserrat'),
                    textInputAction: TextInputAction.next,
                    maxLines: 1,
                    // gives effect on select of a field
                    enableInteractiveSelection: true,
                    decoration: InputDecoration(
                      labelText: 'Fullname',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      alignLabelWithHint: true,
                      hintStyle: TextStyle(color: Colors.black),
                      contentPadding: EdgeInsets.only(
                          right: 15.0, left: 15.0, top: 15.0, bottom: 5.0),
                      hasFloatingPlaceholder: true,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red.withOpacity(0.5),
                        ),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Icon(
                          Icons.person,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'field cannot be empty';
                      }
                      if (!(value is String)) {
                        return 'Enter letters only';
                      } else {
                        name = value;
                        return null;
                      }
                    }),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: workController,
                  textInputAction: TextInputAction.next,
                  maxLines: 1,
                  enableInteractiveSelection: true,
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.orange,
                      fontFamily: 'Montserrat'),
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    contentPadding: EdgeInsets.only(
                        right: 15.0, left: 15.0, top: 15.0, bottom: 5.0),
                    labelText: 'Specialty',
                    labelStyle: TextStyle(color: Colors.black),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Icon(
                        Icons.work,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red.withOpacity(0.5),
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'field cannot be empty';
                    }
                    if (!(value is String)) {
                      return 'Enter letters only';
                    } else {
                      job = value;
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  // controller enables to interact with a field at a time
                  controller: phoneController,
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 16.0,
                      fontFamily: 'Montserrat'),
                  textInputAction: TextInputAction.next,
                  maxLines: 1,
                  keyboardType: TextInputType.numberWithOptions(signed: true),
                  // gives effect on select of a field
                  enableInteractiveSelection: true,
                  decoration: InputDecoration(
                    labelText: 'Phone number',
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    alignLabelWithHint: true,
                    hintStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.only(
                        right: 15.0, left: 15.0, top: 15.0, bottom: 5.0),
                    hasFloatingPlaceholder: true,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red.withOpacity(0.5),
                      ),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Icon(
                        Icons.phone_android,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'field cannot be empty';
                    } else {
                      num = value;
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 25.0,
                ),
                TextFormField(
                  // controller enables to interact with a field at a time
                  controller: emailController,
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 16.0,
                      fontFamily: 'Montserrat'),
                  textInputAction: TextInputAction.done,
                  maxLines: 1,
                  keyboardType: TextInputType.emailAddress,
                  // gives effect on select of a field
                  enableInteractiveSelection: true,
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    alignLabelWithHint: true,
                    hintStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.only(
                        right: 15.0, left: 15.0, top: 15.0, bottom: 5.0),
                    hasFloatingPlaceholder: true,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red.withOpacity(0.5),
                      ),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Icon(
                        Icons.mail,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value)) {
                      return 'Please enter a valid Email.';
                    } else {
                      mail = value;
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                MaterialButton(
                  color: Colors.purple,
                  onPressed: () => _pickImage(context),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        _pic,
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(Icons.image)
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  onPressed: () => onBtnPressed(),
                  color: Colors.orange,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Create',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(Icons.send)
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
