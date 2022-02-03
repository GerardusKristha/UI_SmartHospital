// ignore_for_file: unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';

class Login_page extends StatefulWidget {
  Login_page({Key? key}) : super(key: key);

  @override
  _Login_pageState createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  TextEditingController user_name = new TextEditingController();
  TextEditingController password = new TextEditingController();
  var _nama, _password, kunci;
  String errorText = "isikan data";
  void error() {
    _nama = user_name.value;
    _password = password.value;
    if (_nama.toString().isEmpty || _password.toString().isEmpty) {
      Text("fill the form");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Smart Hospital",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(children: <Widget>[
                        TextFormField(
                          controller: user_name,
                          decoration: InputDecoration(
                              icon: Icon(Icons.person), hintText: "username"),
                        ),
                        Text(user_name.value.toString()),
                        TextFormField(
                          controller: password,
                          decoration: InputDecoration(
                              icon: Icon(Icons.vpn_key), hintText: "password"),
                        ),
                        Text(user_name.value.toString()),
                        SizedBox(height: 16),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            child: Text("login"),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => home()));
                            },
                          ),
                        ),
                      ]),
                    ))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

// class Form_widget extends StatelessWidget {
//   const Form_widget({
//     Key? key,
//     required this.user_name,
//     required this.password,
//   }) : super(key: key);

  // final TextEditingController user_name;
  // final TextEditingController password;
 
  // @override
  // Widget build(BuildContext context) {
  //   return Column(
  //     children: <Widget>[
  //       TextFormField(
  //         controller: user_name,
  //         decoration: const InputDecoration(
  //             icon: Icon(Icons.person), hintText: "user name"),
  //       ),
  //       Text(user_name.text + password.text),
  //       TextFormField(
  //         controller: password,
  //         decoration: const InputDecoration(
  //             icon: Icon(Icons.vpn_key), hintText: "password"),
  //       ),
  //       Text(user_name.text),
  //       SizedBox(height: 16),
  //       SizedBox(
  //         width: double.infinity,
  //         child: ElevatedButton(
  //             child: Text("login"),
  //             onPressed: () {
  //               if (user_name == null || password == null) {
                  
  //               } else {
  //                 Navigator.push(
  //                     context, MaterialPageRoute(builder: (context) => home()));
  //               }
  //             }),
  //       )
  //     ],


