import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/counter_model.dart';

import 'screens/home_page.dart';
import 'screens/widget_page.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => Counter()),
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
        '/home': (context) => HomePage(),
        '/widget': (context) => WidgetPage(),
      },
      initialRoute: '/home',
      debugShowCheckedModeBanner: false,
    );
  }
}
