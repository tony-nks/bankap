import 'package:drawer/screens/transaction_sheet.dart';
import 'package:flutter/material.dart';




class AppBarCustom extends StatefulWidget {
  const AppBarCustom({Key? key}) : super(key: key);

  @override
  State<AppBarCustom> createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                // дата
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'THURSDAY',
                          style:
                          TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        Text(
                          '4 SEPTEMBER',
                          style:
                          TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),

                // центральное лого
                Builder(builder: (context) {
                  return Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(0.2),
                            blurRadius: 12,
                            spreadRadius: 8,
                          ),
                        ],
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/Islam.jpg'),
                        )),
                    child: InkWell(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                    ),
                  );
                }),

                // две кнопочки Уведолмения и Профиль
                Row(
                  children: [
                    IconButton(
                        onPressed: () => showTransactionsSheet(context),
                        icon: const Icon(Icons.notifications_active)),
                    Builder(builder: (context) {
                      return IconButton(
                        icon: const Icon(Icons.person),
                        onPressed: () {
                          Scaffold.of(context).openEndDrawer();
                        },
                      );
                    }),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
