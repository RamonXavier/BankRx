import 'package:flutter/material.dart';

class MyDotsApp extends StatelessWidget {
  final int currentIndex;

  Color getColor(int index) {
    return index == currentIndex ? Colors.white : Colors.white38;
  }

  const MyDotsApp({Key? key, required this.currentIndex}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: 7,
          width: 7,
          decoration: BoxDecoration(shape: BoxShape.circle, color: getColor(0)),
        ),
        const SizedBox(width: 8),
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: 7,
          width: 7,
          decoration: BoxDecoration(shape: BoxShape.circle, color: getColor(1)),
        ),
        const SizedBox(width: 8),
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: 7,
          width: 7,
          decoration: BoxDecoration(shape: BoxShape.circle, color: getColor(2)),
        ),
      ],
    );
  }
}
