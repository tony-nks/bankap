import 'package:drawer/components/global_transactions_in_main.dart';
import 'package:flutter/material.dart';


class GlobalTransactionsScreen extends StatelessWidget {
  const GlobalTransactionsScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: 450,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: const [
            GlobalTransInMain(icon: Icon(Icons.airplanemode_on, color: Colors.white,), cardName: 'Sber Bank', transName: 'AirLine Ticket', sum: 1000),
            GlobalTransInMain(icon: Icon(Icons.car_rental, color: Colors.white), cardName: 'Alpha Bank', transName: 'Car Rental', sum: 200),
            GlobalTransInMain(icon: Icon(Icons.directions_bus, color: Colors.white), cardName: 'Alpha Bank', transName: 'Bus Ticket', sum: 200),
            ],
        ),
      ),
    );
  }
}
