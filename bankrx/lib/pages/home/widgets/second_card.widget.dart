import 'package:flutter/material.dart';

class SecondCard extends StatelessWidget {
  const SecondCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(
                              Icons.attach_money,
                              color: Colors.grey,
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              "Conta",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.visibility,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            "Saldo disponível",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                          const Text.rich(
                            TextSpan(
                              text: "R\$4.234,09",
                            ),
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black, fontSize: 28),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 12, bottom: 12, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(
                      Icons.credit_card,
                      color: Colors.grey,
                    ),
                    const Text(
                      "Compra mais recente no posto de gasolina \n no valor de R\$ 50,00",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    const Icon(Icons.chevron_right_outlined,
                        color: Colors.grey, size: 18)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
