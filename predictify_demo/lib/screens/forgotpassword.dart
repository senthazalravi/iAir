import 'package:flutter/material.dart';

class forgotpassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("FORGOT PASSWORD"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "images/forgotpwd.png",
                height: 150,
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Center(
                  child: Text(
                    "Forgot your Password?",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.red.shade900,
                    ),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: Center(
                  child: Text(
                    "Not to worry, we got you! Let's get you a New Password",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 50.0, vertical: 10.0),
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
                padding: const EdgeInsets.symmetric(
                    horizontal: 50.0, vertical: 10.0),
                child: TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: 'New password',
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
                padding: const EdgeInsets.symmetric(
                    horizontal: 50.0, vertical: 10.0),
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
              padding: const EdgeInsets.symmetric(vertical: 16.0),
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
                  child: const Text('RESET PASSWORD'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
