import 'package:bankrx/pages/home/widgets/item_menu_bottom.widget.dart';
import 'package:bankrx/pages/home/widgets/menuApp.widget.dart';
import 'package:bankrx/pages/home/widgets/my_app_bar.widget.dart';
import 'package:bankrx/pages/home/widgets/my_dots_app.widget.dart';
import 'package:bankrx/pages/home/widgets/page_view_app.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu = false;
  int _currentIndex = 0;
  double _yPosition = 0;

  @override
  void initState() {
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
    _yPosition = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    if (_yPosition == 0) _yPosition = _screenHeight * .15;

    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Stack(
        children: <Widget>[
          MyAppBar(
            showMenu: _showMenu,
            ontap: () {
              setState(() {
                _showMenu = !_showMenu;
                _yPosition =
                    _showMenu ? _screenHeight * .70 : _screenHeight * .15;
              });
            },
          ),
          MenuApp(
            top: _screenHeight * .11,
            showMenu: _showMenu,
          ),
          PageViewApp(
            top: _yPosition,
            showMenu: _showMenu,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            onPanUpdate: (detailsUpdate) {
              double topLimit = _screenHeight * .15;
              double bottomLimit = _screenHeight * .70;
              setState(() {
                _yPosition += detailsUpdate.delta.dy;
                if (_yPosition > topLimit + 70 && _yPosition < topLimit * 2 ||
                    _yPosition > bottomLimit) {
                  _yPosition = bottomLimit;
                  _showMenu = true;
                }

                if (_yPosition < bottomLimit - 100 &&
                        _yPosition > topLimit * 2 ||
                    _yPosition < topLimit) {
                  _yPosition = topLimit;
                  _showMenu = false;
                }
              });
            },
          ),
          MyDotsApp(
            showMenu: _showMenu,
            top: _screenHeight * .67,
            left: 190,
            currentIndex: _currentIndex,
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            bottom: !_showMenu ? 0 + MediaQuery.of(context).padding.bottom : 0,
            left: 0,
            right: 0,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: !_showMenu ? 1 : 0,
              // ignore: sized_box_for_whitespace
              child: Container(
                height: _screenHeight * 0.14,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: const <Widget>[
                    ItemMenuBottom(
                        icon: Icons.person_add, text: "Indicar Amigos"),
                    ItemMenuBottom(
                        icon: Icons.phone_android, text: "Recarga de celular"),
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
          )
        ],
      ),
    );
  }
}
