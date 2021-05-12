import 'package:flutter/material.dart';

import './pages/home.dart';
import './pages/about.dart';
import './pages/payment.dart';
import './pages/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
      ),
      home: HomePage(),
      routes: {
        About.routeName: (ctx) => About(),
        Settings.routeName: (ctx) => Settings(),
        Payment.routeName: (ctx) => Payment(),
      },
    );
  }
}
