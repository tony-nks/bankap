import 'package:flutter/material.dart';

class GlobalTransInMain extends StatelessWidget {
  final String transName;
  final cardName;
  final int sum;
  final icon;
  const GlobalTransInMain({Key? key,
    required this.icon,
    required this.cardName,
    required this.transName,
    required this.sum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 65,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey.withOpacity(0.2),
                    blurRadius: 0.1,
                    spreadRadius: 0.1,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                width: 1, color: Colors.white),
                          ),
                          child: icon,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              transName,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              cardName,
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '\$$sum',
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 75,
          ),
        ],
      ),
    );
  }
}
