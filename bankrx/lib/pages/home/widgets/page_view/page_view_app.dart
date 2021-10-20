import 'package:bankrx/pages/home/widgets/cards/card_app.widget.dart';
import 'package:bankrx/pages/home/widgets/cards/first_card.widged.dart';
import 'package:bankrx/pages/home/widgets/cards/second_card.widget.dart';
import 'package:bankrx/pages/home/widgets/cards/third_card.widget.dart';
import 'package:flutter/material.dart';

class PageViewApp extends StatefulWidget {
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
  State<PageViewApp> createState() => _PageViewAppState();
}

class _PageViewAppState extends State<PageViewApp> {
  late Tween<double> _tween;

  @override
  void initState() {
    super.initState();
    _tween = Tween<double>(begin: 150.0, end: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
        tween: _tween,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeInExpo,
        builder: (context, value, chil) {
          return AnimatedPositioned(
            duration: const Duration(milliseconds: 260),
            curve: Curves.easeOut,
            top: widget.top,
            height: MediaQuery.of(context).size.height * .50,
            left: value,
            right: value * -1,
            child: GestureDetector(
              onPanUpdate: widget.onPanUpdate,
              child: PageView(
                onPageChanged: widget.onPageChanged,
                physics: widget.showMenu
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
        });
  }
}
