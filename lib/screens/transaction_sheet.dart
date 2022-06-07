import 'package:drawer/components/transactions.dart';
import 'package:flutter/material.dart';

void showTransactionsSheet(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    elevation: 5,
    backgroundColor: Colors.white,
    context: context,
    builder: (context) => Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      child: const FractionallySizedBox(
        heightFactor: 0.9,
        child: TransactionSheetScreen(),
      ),
    ),
  );
}


class TransactionSheetScreen extends StatefulWidget {
  const TransactionSheetScreen({Key? key}) : super(key: key);

  @override
  State<TransactionSheetScreen> createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<TransactionSheetScreen> {

String bankName = 'Sber Bank';
int balans = 5500;
String cardNum = '1234 5678 9101 2345';
String dateCard = '12/24';


@override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // заголовок
        const ListTile(
          title: Text(
            'Cancel',
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          trailing: Text(
            'Details',
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),

        //объекты
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // карта
              Container(
                padding: const EdgeInsets.all(20),
                height: 200,
                width: 365,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.4),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      )
                    ]),

                // колонка объектов внутри карты
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // наименование банка и лого
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(bankName),
                        const Icon(Icons.credit_card),
                      ],
                    ),

                    // отсуп между наименованием и балансом
                    const SizedBox(
                      height: 60,
                    ),
                    // баланс карты
                    Text(
                      "\$$balans",
                      style:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),

                    // отсуп между балансом и номером карты
                    const SizedBox(
                      height: 25,
                    ),

                    // номер карты
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(cardNum),
                        Text(dateCard)
                      ],
                    )
                  ],
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              // текст транзации
              const Text(
                'Transactions',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),

              //отступ между текстом и списком
              const SizedBox(
                height: 20,
              ),

              //Список истории транзации
              ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Transaction(
                    icon: Icons.check_circle,
                    transactionName: 'AirLineTicket',
                    cartName: bankName,
                    sum: '-5700',
                  ),
                  Transaction(
                    icon: Icons.check_circle,
                    transactionName: 'Car wash',
                    cartName: bankName,
                    sum: '-1000',
                  ),
                  Transaction(
                    icon: Icons.check_circle,
                    transactionName: 'Bus Ticket',
                    cartName: bankName,
                    sum: '-50',
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
