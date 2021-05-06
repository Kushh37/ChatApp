import 'package:chat_app/Widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: appBarMain(context),
        body: SingleChildScrollView(
          child: Container(
            height: height - 80,
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.all(width * 0.050),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          style: textFieldTextStyle(),
                          decoration: textFieldInputDecoration(
                              'Enter Email',
                              Icon(
                                CupertinoIcons.person,
                                color: Colors.white,
                              )),
                        ),
                        SizedBox(height: height * 0.02),
                        TextField(
                            decoration: textFieldInputDecoration(
                                'Enter Password',
                                Icon(
                                  CupertinoIcons.lock,
                                  color: Colors.white,
                                ))),
                        SizedBox(height: height * 0.02),
                        Container(
                          alignment: Alignment.centerRight,
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
                          child: Container(
                            child: Text(
                              'Forget Password?',
                              style: textFieldTextStyle(),
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.02),
                        Container(
                          width: width,
                          height: height * 0.07,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30)))),
                              onPressed: () {},
                              child: Text(
                                'Sign In',
                                style: textFieldTextStyle(),
                              )),
                        ),
                        SizedBox(height: height * 0.02),
                        Container(
                          width: width,
                          height: height * 0.07,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.redAccent),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30)))),
                              onPressed: () {},
                              child: Text(
                                'Sign In with Google',
                                style: textFieldTextStyle(),
                              )),
                        ),
                        SizedBox(height: height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an Account?",
                              style: textFieldTextStyle(),
                            ),
                            Text(
                              'Register Now',
                              style: GoogleFonts.nunito(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            ),
                            SizedBox(height: height * 0.1),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
