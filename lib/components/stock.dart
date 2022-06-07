import 'package:flutter/material.dart';

class Stock extends StatelessWidget {

  final String stockName;
  final String upOrDown;
  final String percent;


  const Stock({Key? key,
    required this.stockName,
    required this.upOrDown,
    required this.percent,



  }) : super(key: key);

  getUpOrDown(){
    if (upOrDown.toString() == 'up') {
      return Icons.trending_up;
    } else if (upOrDown.toString() == 'down'){
      return Icons.trending_down;
    } else {
      return Icons.trending_flat;
    }
  }

  getTrendingColor(){
    if (upOrDown.toString() == 'up') {
      return Colors.green;
    } else if (upOrDown.toString() == 'down' ) {
      return Colors.red;
    } else {
      return Colors.blue;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 35,
          width: 130,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey.withOpacity(0.2),
                blurRadius: 0.1,
                spreadRadius: 0.1,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //SizedBox(width: 10,),
                Text(
                  stockName,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold),
                ),
                Icon(
                  getUpOrDown(),
                  color: getTrendingColor(),
                ),
                Text(
                  '$percent%',
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}

