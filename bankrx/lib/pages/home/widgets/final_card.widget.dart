import 'package:flutter/material.dart';

class FinalCard extends StatelessWidget {
  const FinalCard({Key? key}) : super(key: key);

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
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Icon(
                                Icons.credit_card,
                                color: Colors.grey,
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                "Cartão de crédito final",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 20, bottom: 20),
                          child: SizedBox(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  "FATURA ATUAL",
                                  style: TextStyle(
                                      color: Colors.teal,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text.rich(
                                  TextSpan(text: "R\$", children: [
                                    TextSpan(
                                        text: "1.230",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(text: ",40"),
                                  ]),
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.teal, fontSize: 28),
                                ),
                                const Text.rich(
                                  TextSpan(
                                      text: "Limite disponível ",
                                      style: TextStyle(color: Colors.black),
                                      children: [
                                        TextSpan(
                                            text: "R\$ 3.456,85",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontWeight: FontWeight.bold)),
                                      ]),
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
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
                              child: Container(color: Colors.green),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
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
                      Icons.shopping_cart,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      "Compra mais recente no supermecado \n no valor de R\$ 124,67",
                      style: TextStyle(color: Colors.black, fontSize: 12),
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
