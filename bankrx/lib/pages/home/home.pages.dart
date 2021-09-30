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

  @override
  void initState() {
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Stack(
        children: <Widget>[
          MyAppBar(
            showMenu: _showMenu,
            ontap: () {
              setState(() {
                _showMenu = !_showMenu;
              });
            },
          ),
          PageViewApp(
            top: _screenHeight * .15,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          Positioned(
            top: _screenHeight * .67,
            left: 190,
            child: MyDotsApp(
              currentIndex: _currentIndex,
            ),
          ),
        ],
      ),
    );
  }
}
