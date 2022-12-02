import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/counter_model.dart';

class WidgetPage extends StatelessWidget {
  const WidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Widget Page'),
      ),
      body: Center(
        child: Consumer<Counter>(
              builder: (context, value, child) => Text(
                'Contagem: ${value.count}'
              ),
            ),
      ),
    );
  }
}
