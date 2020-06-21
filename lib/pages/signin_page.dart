import 'package:flutter/material.dart';

import 'package:remedynails/components/rounded_button.dart';
import 'package:remedynails/components/rounded_text_field.dart';
import 'package:remedynails/constants/color_scheme.dart';
import 'package:remedynails/pages/signup_page.dart';

class SignInPage extends StatefulWidget {
  static final String pageId = 'login_screen';

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();

  String _email;
  String _pwd;

  _onPressHandler() {
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
                    Text("Sign In", style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: screenSize.height * 0.03),
                    RoundedInputField(
                      hintText: "Your Email",
                      icon: Icons.email,
                      onChanged: (input) => _email = input,
                      onValidate: (input) => !input.contains('@') ? 'Please enter a valid email' : null,
                    ),
                    RoundedInputField(
                      hintText: "Password",
                      icon: Icons.vpn_key,
                      onChanged: (input) => _pwd = input,
                      onValidate: (input) => input.length < 8 ? "Must be at least 8 characters" : null,
                      maskText: true,
                    ),
                    SizedBox(height: screenSize.height * 0.03),
                    RoundedButton(
                      text: "Sign In",
                      onPressed: _onPressHandler,
                    ),
                    SizedBox(height: screenSize.height * 0.07),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an Account ? ", style: TextStyle( color: kPrimaryColor)),
                        GestureDetector(
                          onTap: () { Navigator.pushNamed(context, SignUpPage.pageId);},
                          child: Text("Sign Up", style: TextStyle( color: kPrimaryColor, fontWeight: FontWeight.bold))
                        )
                      ],
                    )
                  ],
                )
              ))
          ],
        )
      )
    );
  }
}