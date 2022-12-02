import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
        title: Text('HomePage'),
      ),
      body: Center(
        child: TextButton(
          child: Text("Voltar"),
          onPressed: () => {
            Navigator.pop(context)
          },
        ),
      ),
    );
  }
}
