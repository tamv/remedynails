import 'package:flutter/material.dart';
import 'package:remedynails/pages/edit_profile.dart';
import 'package:remedynails/pages/signin_page.dart';
import 'package:remedynails/pages/signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PreMade WIP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: EditProfilePage(),
      routes: {
        SignInPage.pageId: (context) => SignInPage(),
        SignUpPage.pageId: (context) => SignUpPage(),
        EditProfilePage.pageId: (context) => EditProfilePage()
      }
    );
  }
}
