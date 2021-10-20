// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ThirdCard extends StatefulWidget {
  const ThirdCard({Key? key}) : super(key: key);

  @override
  State<ThirdCard> createState() => _ThirdCardState();
}

class _ThirdCardState extends State<ThirdCard> {
  bool _buttomPressed = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.card_giftcard,
            color: Colors.grey,
          ),
          Column(
            children: [
              const Text(
                "BANK-RX Rewards",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
              const SizedBox(height: 15),
              Text(
                "Acumule pontos que nunca expiram e troque por passagens aéreas ou serviços que você realmente usa.",
                style: TextStyle(color: Colors.grey[800], fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(width: 0.7, color: Colors.blue)),
            child: RaisedButton(
              color: Colors.transparent,
              elevation: 0,
              focusElevation: 0,
              hoverElevation: 0,
              disabledElevation: 0,
              highlightElevation: 0,
              highlightColor: Colors.blue[700],
              disabledTextColor: Colors.blue[800],
              textColor: _buttomPressed ? Colors.white : Colors.blue[800],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3)),
              child: const Text(
                "ATIVE O SEU REWARDS",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              onHighlightChanged: (pressed) {
                setState(() {
                  _buttomPressed = pressed;
                });
              },
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
