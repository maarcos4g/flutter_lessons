import 'package:flutter/material.dart';

import 'screens/login_page.dart';
import 'screens/home_page.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(), 
      },
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
    );
  }
}