import 'package:drawer/screens/appBarCustom.dart';
import 'package:drawer/screens/global_transactions_screen.dart';
import 'package:drawer/screens/drawer.dart';
import 'package:drawer/screens/end_drawer.dart';
import 'package:drawer/screens/mini_card_list_horizontal.dart';
import 'package:drawer/screens/stocks_screen.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen());
  }
}


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController tabBarViewController;

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      drawer: const DrawerRight(),
      endDrawer: const EndDrawerLeft(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // своеобразный appBar
          const AppBarCustom(),

          // верхняя часть окна main
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                //приветствие по имени
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Hi Islambek,',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'welcome back',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),

                //Тотал баланс
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'TOTAL BALANCE',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    Text(
                      '\$19 000.00',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),

          //горизонтальный список карт
          const MiniCardList(),

          //горизонтальные акции
          const StocksScreen(),
          const SizedBox(
            height: 10,
          ),

          //Две какие то кнопки
          SizedBox(
            height: 60,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 70,
                    decoration: const BoxDecoration(color: Colors.black),
                    child: const Center(
                      child: Text(
                        'Exchange',
                        style: TextStyle(color: Colors.white60),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                  height: 70,
                  decoration: const BoxDecoration(color: Colors.deepPurple),
                  child: const Center(
                    child: Text(
                      'Pay',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )),
              ],
            ),
          ),



          // Текст заголовка нижнего списка транзакции
          Padding(padding: const EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Transactions', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Text('See all >', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),)
              ],
            ),
          ),


          //вертикальный список транзакции
          const GlobalTransactionsScreen(),


        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: 'Main',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.streetview_outlined,),
            label: 'Trade',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle, ),
            label: 'Pay',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time, ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,),
            label: 'Account',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.blueGrey,
        onTap: null,
      ),
    );
  }
}
