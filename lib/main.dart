import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Flutter Demo Home Page'),
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 150,
              color: Colors.red,
            ),
            Container(
              width: 150,
              color: Colors.blue,
            ),
            Container(
              width: 150,
              color: Colors.green,
            ),
            Container(
              width: 150,
              color: Colors.yellow,
            ),
            Container(
              width: 150,
              color: Colors.purple,
            ),
          ],
        ));
  }
}
