import 'package:bankrx/pages/home/widgets/card_app.widget.dart';
import 'package:bankrx/pages/home/widgets/third_card.widget.dart';
import 'package:bankrx/pages/home/widgets/first_card.widged.dart';
import 'package:bankrx/pages/home/widgets/second_card.widget.dart';
import 'package:flutter/material.dart';

class PageViewApp extends StatelessWidget {
  final double top;
  final ValueChanged<int> onPageChanged;
  final GestureDragUpdateCallback? onPanUpdate;
  final bool showMenu;

  const PageViewApp(
      {Key? key,
      required this.top,
      required this.onPageChanged,
      this.onPanUpdate,
      required this.showMenu})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 260),
      curve: Curves.easeOut,
      top: top,
      height: MediaQuery.of(context).size.height * .50,
      left: 0,
      right: 0,
      child: GestureDetector(
        onPanUpdate: onPanUpdate,
        child: PageView(
          onPageChanged: onPageChanged,
          physics: showMenu
              ? const NeverScrollableScrollPhysics()
              : const BouncingScrollPhysics(),
          children: const <Widget>[
            CardApp(child: FirstCard()),
            CardApp(child: SecondCard()),
            CardApp(child: ThirdCard()),
          ],
        ),
      ),
    );
  }
}
