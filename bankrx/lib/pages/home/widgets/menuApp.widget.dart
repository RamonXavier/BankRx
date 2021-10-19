import 'package:bankrx/pages/home/widgets/itemMenu.widget.dart';
import 'package:flutter/material.dart';

class MenuApp extends StatelessWidget {
  final double top;
  final bool showMenu;
  const MenuApp({Key? key, required this.top, required this.showMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 100),
        opacity: showMenu ? 1 : 0,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.63,
          child: Column(
            children: <Widget>[
              Image.network(
                "https://wikiimg.tojsiabtv.com/wikipedia/commons/thumb/d/d0/QR_code_for_mobile_English_Wikipedia.svg/1200px-QR_code_for_mobile_English_Wikipedia.svg.png",
                height: 80,
                width: 80,
                color: Colors.white,
              ),
              const Text.rich(
                TextSpan(text: "Banco ", children: [
                  TextSpan(
                      text: "160 - Rx Pagamentos S.A",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ]),
                style: TextStyle(fontSize: 12),
              ),
              const SizedBox(height: 5),
              const Text.rich(
                TextSpan(text: "Agência ", children: [
                  TextSpan(
                      text: "0001",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ]),
                style: TextStyle(fontSize: 12),
              ),
              const SizedBox(height: 5),
              const Text.rich(
                TextSpan(text: "Conta ", children: [
                  TextSpan(
                      text: "123456789-0",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ]),
                style: TextStyle(fontSize: 12),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: <Widget>[
                      const ItemMenu(icon: Icons.info, text: "Me Ajuda"),
                      const ItemMenu(
                          icon: Icons.person_outline, text: "Perfil"),
                      const ItemMenu(
                          icon: Icons.settings_applications_outlined,
                          text: "Configurar Conta"),
                      const ItemMenu(
                          icon: Icons.credit_card, text: "Configurar Cartão"),
                      const ItemMenu(icon: Icons.store, text: "Pedir conta PJ"),
                      const ItemMenu(
                          icon: Icons.phone_android_sharp,
                          text: "Configurações do App"),
                      const SizedBox(height: 25),
                      Container(
                        height: 35,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 0.7, color: Colors.white54)),
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          elevation: 0,
                          disabledElevation: 0,
                          focusElevation: 0,
                          hoverElevation: 0,
                          highlightElevation: 0,
                          splashColor: Colors.white,
                          color: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: () {},
                          child: const Text(
                            "SAIR DO APP",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
