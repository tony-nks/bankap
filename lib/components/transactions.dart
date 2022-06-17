import 'package:flutter/material.dart';


class Transaction extends StatelessWidget {
  final IconData icon;
  final String transactionName;
  final String cartName;
  final String sum;
  const Transaction({
    Key? key,
    required this.icon,
    required this.transactionName,
    required this.cartName,
    required this.sum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon),
              const SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(transactionName, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  Text(cartName.toString(), style: const TextStyle(fontSize: 12),),
                ],
              )
            ],
          ),
          Text('$sum \$', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
