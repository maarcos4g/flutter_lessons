import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/counter_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Counter'),
      ),
      body: Container(
        width: screen.width,
        height: screen.height,
        child: Column(
          children: <Widget>[
            Text('Contagem'),
            Consumer<Counter>(
              builder: (context, value, child) => Text(
                value.count.toString()
              ),
            ),
            Container(
              child: ElevatedButton(
                child: Text("Outra página"),
                onPressed: () {
                  Navigator.pushNamed(context, '/widget');
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<Counter>(context, listen: false).increment();
        },
        child: Text('+1'),
      ),
    );
  }
}
