import 'package:bankrx/pages/home/widgets/bottom_menu/item_menu_bottom.widget.dart';
import 'package:flutter/material.dart';

class BottomMenu extends StatefulWidget {
  final bool showMenu;
  const BottomMenu({Key? key, required this.showMenu}) : super(key: key);

  @override
  State<BottomMenu> createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
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
            duration: const Duration(milliseconds: 200),
            bottom: !widget.showMenu
                ? 0 + MediaQuery.of(context).padding.bottom
                : 0,
            left: value,
            right: value * -1,
            child: IgnorePointer(
              ignoring: widget.showMenu,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 200),
                opacity: !widget.showMenu ? 1 : 0,
                // ignore: sized_box_for_whitespace
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: const <Widget>[
                      ItemMenuBottom(
                          icon: Icons.person_add, text: "Indicar Amigos"),
                      ItemMenuBottom(
                          icon: Icons.phone_android,
                          text: "Recarga de celular"),
                      ItemMenuBottom(icon: Icons.chat, text: "Cobrar"),
                      ItemMenuBottom(
                          icon: Icons.monetization_on, text: "Empréstimos"),
                      ItemMenuBottom(
                          icon: Icons.move_to_inbox, text: "Depositar"),
                      ItemMenuBottom(
                          icon: Icons.mobile_screen_share, text: "Trasnferir"),
                      ItemMenuBottom(
                          icon: Icons.format_align_center_rounded,
                          text: "Ajustar Limite"),
                      ItemMenuBottom(
                          icon: Icons.chrome_reader_mode, text: "Pagar"),
                      ItemMenuBottom(
                          icon: Icons.lock_open, text: "Bloquear cartão"),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
