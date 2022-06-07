import 'package:drawer/components/stock.dart';
import 'package:flutter/material.dart';

class StocksScreen extends StatefulWidget {
  const StocksScreen({Key? key}) : super(key: key);

  @override
  State<StocksScreen> createState() => _StocksScreenState();
}

class _StocksScreenState extends State<StocksScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('STOCK'),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 30,
            width: 380,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey.shade300),
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Stock(
                  stockName: 'USD',
                  upOrDown: 'up',
                  percent: '-1.56',
                ),
                const Stock(
                  stockName: 'BTC',
                  upOrDown: 'down',
                  percent: '-0.56',
                ),
                const Stock(stockName: 'ETC', upOrDown: 'null', percent: '0.00'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
