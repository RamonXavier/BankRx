import 'package:bankrx/pages/home/home.pages.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    delaySplash();
  }

  Future<void> delaySplash() async {
    return await Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(pageBuilder: (BuildContext context,
              Animation animation, Animation secondAnimation) {
            return const HomePage();
          }),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: Center(
        child: Image.asset(
          "assets/logo/1s.png",
          height: 60,
          color: Colors.white,
        ),
      ),
    );
  }
}
