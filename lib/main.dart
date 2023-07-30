import 'package:flutter/material.dart';
import 'package:market/pages/sign_in_page.dart';
import 'package:market/pages/splash_page.dart';
import 'theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => SplashPage(),
        '/sign-in' : (context) => SignInPage(),
      },
    );
  }
}



