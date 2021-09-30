import 'package:bankrx/pages/home/widgets/card_app.widget.dart';
import 'package:flutter/material.dart';

class PageViewApp extends StatelessWidget {
  final double top;
  final ValueChanged<int> onPageChanged;

  const PageViewApp({Key? key, required this.top, required this.onPageChanged})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      height: MediaQuery.of(context).size.height * .50,
      left: 0,
      right: 0,
      child: PageView(
        onPageChanged: onPageChanged,
        physics: const BouncingScrollPhysics(),
        children: <Widget>[
          CardApp(),
          CardApp(),
          CardApp(),
        ],
      ),
    );
  }
}
