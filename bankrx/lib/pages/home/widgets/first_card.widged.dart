import 'package:flutter/material.dart';

class FirstCard extends StatelessWidget {
  const FirstCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 12, bottom: 12, left: 10, right: 12),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        width: 7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          //  color: Colors.teal,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(color: Colors.amber),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(color: Colors.blueGrey),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(color: Colors.teal),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            flex: 3,
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey[200],
            ),
          ),
        ],
      ),
    );
  }
}
