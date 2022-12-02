import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/user_model.dart';

import 'screens/home_page.dart';
import 'screens/login_page.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => User()),
    ],
    child: MyApp(),
  ));
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
        '/login': (context) => HomePage(),
      },
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
    );
  }
}
