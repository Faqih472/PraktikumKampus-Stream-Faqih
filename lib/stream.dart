import 'package:flutter/material.dart';

class ColorStream {
  final List<Color> colors = [
    Colors.deepOrange,
    Colors.yellowAccent,
    Colors.lightBlue,
    Colors.redAccent,
    Colors.cyanAccent,
  ];

  Stream<Color> getColors() async* {
    yield* Stream.periodic(const Duration(seconds: 1), (int t) {
      int index = t % colors.length;
      return colors[index];
    });
  }
}


