import 'package:flutter/material.dart';

class WebManager extends ChangeNotifier {
  double _scrollMultipler = 0;

  double get scrollMultipler => _scrollMultipler;

  void changeScrollMultipler(double value) {
    _scrollMultipler = value;
    notifyListeners();
  }
}
