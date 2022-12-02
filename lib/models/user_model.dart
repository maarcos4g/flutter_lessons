import 'package:flutter/material.dart';

class User with ChangeNotifier {
  String name = '';

  void changeName(newName) {
    name = newName;
  }
}