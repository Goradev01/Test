// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:test/Homepage.dart';
import 'package:test/tab.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = 'b';
  String? validmail(String value) {
    if (value.length < 1) {
      return 'Fill all the necessary form';
    } else {
      return null;
    }
  }

  bool ShowPassword = false;
  String password = 'b';

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff5f8f6),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      // resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff5f8f6),
      // appBar: AppBar(title: const Text('Home')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
          child: SizedBox(
            height: height * 0.9,
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // // mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // SizedBox(height: height * 0.1),
                    Image.asset('assets/title.jpg'),
                    Column(
                      children: [
                        Text('Login',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        Text('Enter your email & password below',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.blue,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: width * 0.8,
                          height: 70,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 8.0,
                                    color: Color(0xfff9fdfc),
                                    offset: Offset.fromDirection(4.0, 4.0))
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextField(
                              //controller: _emailController,
                              onChanged: (emailinput) => {
                                setState(() => {
                                      email = emailinput,
                                    })
                              },
                              onSubmitted: (emailinput) {
                                print(emailinput);
                              },
                              decoration: InputDecoration(
                                // labelText: 'Email',
                                border: InputBorder.none,
                                labelStyle: TextStyle(color: Colors.grey),
                                errorText: validmail(email),
                                hintText: 'you@email.com',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: width * 0.8,
                          height: 70,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 8.0,
                                    color: Color(0xfff9fdfc),
                                    offset: Offset.fromDirection(4.0, 4.0))
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextField(
                              obscureText: !ShowPassword,
                              onChanged: (passwordinput) => {
                                setState(() => {
                                      password = passwordinput,
                                    })
                              },
                              onSubmitted: (passwordinput) {
                                print(passwordinput);
                              },
                              decoration: InputDecoration(
                                  labelText: 'Password',
                                  border: InputBorder.none,
                                  labelStyle: TextStyle(color: Colors.grey),
                                  suffixIcon: IconButton(
                                      icon: Icon(
                                        Icons.remove_red_eye,
                                        color: ShowPassword
                                            ? Colors.blue
                                            : Colors.grey,
                                      ),
                                      onPressed: () {
                                        setState(() => {
                                              ShowPassword = !ShowPassword,
                                            });
                                      })),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => tab()),
                        );
                      },
                      child: Container(
                          width: width * 0.8,
                          alignment: Alignment.center,
                          height: 50,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.topLeft,
                                  colors: [
                                    Colors.purpleAccent,
                                    Color.fromARGB(255, 149, 47, 168)
                                  ]),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              // color: Colors.purpleAccent,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 8.0,
                                    color: Color(0xfff9fdfc),
                                    offset: Offset.fromDirection(4.0, 4.0))
                              ]),
                          child: Text(
                            'LOG IN',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
