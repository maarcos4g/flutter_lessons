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
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  var contacts = [
    'Marcos',
    'Paulo',
    'John',
    'Adriana',
    'Carolina',
    'Tainá',
  ];

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Contacts'),
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(20),
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            return ListTile(
                leading: Icon(
                  Icons.person,
                  size: 28,
                ),
                title: Text('${contacts[index]}'),
                trailing: Icon(
                  Icons.call,
                  size: 28,
                ));
          }),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("Header"),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            ListTile(
              title: Text("Item 1"),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
