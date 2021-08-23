import 'package:flutter/material.dart';

class signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("SIGNUP"),
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
                  decoration: InputDecoration(
                    hintText: 'Email',
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
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50.0, vertical: 4.0),
                child: TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: 'Confirm password',
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
              padding: const EdgeInsets.symmetric(vertical: 4.0),
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
                  child: const Text('SUBMIT'),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Center(
                  child: Text(
                    "you can also signup with",
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset("images/google.png", height: 50),
                    Image.asset("images/facebook.png", height: 50),
                    Image.asset("images/twitter.png", height: 50)
                  ],
                )),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Existing user? LOGIN",
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.red.shade900,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
