import 'package:flutter/material.dart';
import 'package:flutter_application_2/dashboard.dart';
import 'package:flutter_application_2/homepage.dart';
import 'package:flutter_application_2/signinpage.dart';
import 'package:flutter_application_2/signuppage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomePage(),
      // home: const SignUpPAge(),
      // home: SignInPage(),
      // home: Dashboard(),
      debugShowCheckedModeBanner: false,
    );R
  }
}
