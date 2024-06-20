import 'package:flutter/material.dart';


class IncrementerProvider with ChangeNotifier{
  int _value = 0;

  int get value => _value;

  void executeIncrementer(){
    _value = _value + 1;
    notifyListeners();
  }
}