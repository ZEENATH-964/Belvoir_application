import 'package:flutter/material.dart';

class UserBottomProvider extends ChangeNotifier {
  int currentIndex=0;

  void changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}