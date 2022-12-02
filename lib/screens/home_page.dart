import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  var background = Colors.white;

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Counter'),
      ),
      body: Container(
        color: background,
        width: screen.width,
        height: screen.height,
        child: Column(
          children: <Widget>[
            Text('Contagem'),
            Text(count.toString()),
            SizedBox(height: screen.height - 250),
              ElevatedButton(
                onPressed: () => {
                  setState((() {
                    background = Colors.blue;
                  }))
                },
                child: Text('Trocar Fundo'),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: Text('+1'),
      ),
    );
  }
}
