import 'package:flutter/material.dart';

class ItemMenuBottom extends StatelessWidget {
  const ItemMenuBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      child: Container(
        width: 82,
        height: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.white24),
      ),
    );
  }
}
