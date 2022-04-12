import 'dart:async';

import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  //change value
  int temp = 20;

  updateTemp(int temp) {
    this.temp = temp;
    notifyListeners();
  }

  // start a timer

  int time = 0;

  updateTimer(int time) {
    this.time = time;
    notifyListeners();
  }

  getTimer() {
    Timer.periodic(Duration(seconds: 1), (start) {
      updateTimer(start.tick);
    });
  }

  // Provider with async
  String name = "Make a String";
  updateString(String name) {
    this.name = name;
    notifyListeners();
  }

  Future<void> getString(String name) async {
    Future.delayed(Duration(seconds: 2), () {
      updateString(name);
    });
  }

  //change widget

  bool change = false;
  updateWidget() {
    change = !change;
    notifyListeners();
  }
}
