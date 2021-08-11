/// Flutter code sample for Form

// This example shows a [Form] with one [TextFormField] to enter an email
// address and an [ElevatedButton] to submit the form. A [GlobalKey] is used here
// to identify the [Form] and validate input.
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/widgets/form.png)

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'WELCOME to IAIR-LOGIN';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        color: Colors.teal,
      )),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
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
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 8.0),
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
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 8.0),
              child: TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: 'password',
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
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
                            side: BorderSide(color: Colors.teal, width: 2.0)))),
                onPressed: () {
                  // Validate will return true if the form is valid, or false if
                  // the form is invalid.
                  if (_formKey.currentState!.validate()) {
                    // Process data.
                  }
                },
                child: const Text('LOGIN'),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text("Forgot your Password?",
                      style: TextStyle(fontSize: 14.0, color: Colors.black)),
                ),
              )),
          Container(
              height: 60,
              width: 500,
              padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 6),
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
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side:
                                  BorderSide(color: Colors.teal, width: 3.0)))),
                  onPressed: () {
                    print('Pressed');
                  })),
          Container(
              height: 60,
              width: 500,
              padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 6),
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
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side:
                                  BorderSide(color: Colors.teal, width: 3.0)))),
                  onPressed: () {
                    print('Pressed');
                  })),
          Container(
              height: 60,
              width: 500,
              padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 6),
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
                            side: BorderSide(color: Colors.teal, width: 3.0)))),
                onPressed: () {},
              )),
          TextButton(
              onPressed: () {
                /*...*/
              },
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text("New to Predictify? SIGNUP",
                    style:
                        TextStyle(fontSize: 14.0, color: Colors.red.shade900),
                    textAlign: TextAlign.right),
              )),
        ],
      ),
    );
  }
}
