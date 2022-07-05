import 'package:flutter/material.dart';
import 'package:loginpage/models/const.dart';
import 'package:loginpage/signin.dart';

class signup extends StatefulWidget {
  signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 100),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                Image.asset('assets/4applogo.png'),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    'Create your account',
                    style: TextStyle(color: Color.fromARGB(255, 25, 163, 53)),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    enabledBorder: eBorderInputDecoration,
                    focusedBorder: fBorderInputDecoration,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    enabledBorder: eBorderInputDecoration,
                    focusedBorder: fBorderInputDecoration,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    enabledBorder: eBorderInputDecoration,
                    focusedBorder: fBorderInputDecoration,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 168, 16, 16))),
                      onPressed: () {},
                      child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Signup',
                            textAlign: TextAlign.center,
                          ))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(children: [
                          TextSpan(
                              text: "Already have an account?  ",
                              style: TextStyle(color: Colors.brown)),
                        ])),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => signin()),
                          );
                        },
                        child: Container(
                          child: Text(
                            'Signin',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromARGB(255, 76, 83, 175),
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ],
                ),
              ]),
            ),
          ],
        ),
      )),
    );
  }
}
