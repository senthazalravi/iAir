import 'package:flutter/material.dart';
import 'package:predictify_ai/screens/forgotpassword.dart';
import 'package:predictify_ai/screens/signup.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("LOGIN"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "images/logo.jpeg",
                height: 100,
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50.0, vertical: 4.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: TextStyle(color: Colors.black),
                    filled: true,
                    fillColor: Colors.teal.shade200,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                )),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50.0, vertical: 4.0),
                child: TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.black),
                    filled: true,
                    fillColor: Colors.teal.shade200,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return '******';
                    }
                    return null;
                  },
                )),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Checkbox(
                checkColor: Colors.white,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              SizedBox(width: 0),
              Text('Remember me'),
              SizedBox(width: 70),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => forgotpassword()),
                  );
                },
                child: Text("Forgot your Password?",
                    style: TextStyle(fontSize: 14.0, color: Colors.black)),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red.shade900),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side:
                                  BorderSide(color: Colors.teal, width: 2.0)))),
                  onPressed: () {
                    // Validate will return true if the form is valid, or false if
                    // the form is invalid.

                    // Process data.
                  },
                  child: const Text('LOGIN'),
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signup()),
                  );
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "New to Predictify? SIGNUP",
                    style:
                        TextStyle(fontSize: 14.0, color: Colors.red.shade900),
                  ),
                )),
            Row(
              children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                      child: Divider(
                        color: Colors.black,
                        height: 10,
                      )),
                ),
                Text("OR"),
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                      child: Divider(
                        color: Colors.black,
                        height: 10,
                      )),
                ),
              ],
            ),
            Container(
                height: 55,
                width: 450,
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 4),
                child: ElevatedButton.icon(
                    label: Text(
                      'Sign in with Google',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                    icon: Image.asset("images/google.png", height: 30),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    side: BorderSide(
                                        color: Colors.teal, width: 3.0)))),
                    onPressed: () {
                      print('Pressed');
                    })),
            Container(
                height: 55,
                width: 450,
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 4),
                child: ElevatedButton.icon(
                    label: Text(
                      'Sign in with Facebook',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                    icon: Image.asset("images/facebook.png", height: 30),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    side: BorderSide(
                                        color: Colors.teal, width: 3.0)))),
                    onPressed: () {
                      print('Pressed');
                    })),
            Container(
                height: 55,
                width: 450,
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 4),
                child: ElevatedButton.icon(
                  label: Text('Sign in with Twitter',
                      style: TextStyle(color: Colors.black.withOpacity(0.6))),
                  icon: Image.asset("images/twitter.png", height: 30),
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side:
                                  BorderSide(color: Colors.teal, width: 3.0)))),
                  onPressed: () {},
                )),
          ],
        ),
      ),
    );
  }
}
