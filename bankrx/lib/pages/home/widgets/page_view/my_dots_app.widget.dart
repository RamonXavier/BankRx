import 'package:flutter/material.dart';

class MyDotsApp extends StatelessWidget {
  final int currentIndex;
  final double top;
  final double left;
  final bool showMenu;

  Color getColor(int index) {
    return index == currentIndex ? Colors.white : Colors.white38;
  }

  const MyDotsApp(
      {Key? key,
      required this.currentIndex,
      required this.top,
      required this.left,
      required this.showMenu})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 200),
        opacity: showMenu ? 0 : 1,
        child: Row(
          children: <Widget>[
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: 7,
              width: 7,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: getColor(0)),
            ),
            const SizedBox(width: 8),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: 7,
              width: 7,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: getColor(1)),
            ),
            const SizedBox(width: 8),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: 7,
              width: 7,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: getColor(2)),
            ),
          ],
        ),
      ),
    );
  }
}
