import 'package:flutter/material.dart';

import 'package:remedynails/components/rounded_button.dart';
import 'package:remedynails/components/rounded_text_field.dart';
import 'package:remedynails/constants/color_scheme.dart';
import 'package:remedynails/pages/signin_page.dart';

class SignUpPage extends StatefulWidget {
  static final String pageId = 'signup_screen';

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  
  String _email;
  String _pwd;


  _onPressHandler() {
    print(_formKey.currentState);
    if(_formKey.currentState.validate()){
      _formKey.currentState.save();
      print("Email -> " + _email);
      print("Password -> " + _pwd);

      // logging in using firebase auth lib... 
    }
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSize.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SingleChildScrollView(
              child: new Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sign Up", style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: screenSize.height * 0.03),
                    RoundedInputField(
                      hintText: "Your Email",
                      icon: Icons.email,
                      onChanged: (input) => _email = input
                    ),
                    RoundedInputField(
                      hintText: "Password",
                      icon: Icons.vpn_key,
                      onChanged: (input) => _pwd = input,
                      maskText: true,
                    ),
                    RoundedInputField(
                      hintText: "Confirmed Password",
                      icon: Icons.verified_user,
                      onChanged: (input) => _pwd = input,
                      maskText: true,
                    ),
                    SizedBox(height: screenSize.height * 0.03),
                    RoundedButton(
                      text: "Sign Up",
                      onPressed: _onPressHandler,
                    ),
                    SizedBox(height: screenSize.height * 0.07),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an Account ? ", style: TextStyle( color: kPrimaryColor)),
                        GestureDetector(
                          onTap: () { Navigator.pushNamed(context, SignInPage.pageId);},
                          child: Text("Sign In", style: TextStyle( color: kPrimaryColor, fontWeight: FontWeight.bold))
                        )
                      ],
                    )
                  ],
                )
              )
            )
          ],
        )
      )
    );
  }
}