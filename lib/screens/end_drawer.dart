import 'package:flutter/material.dart';

class EndDrawerLeft extends StatefulWidget {
  const EndDrawerLeft({Key? key}) : super(key: key);

  @override
  State<EndDrawerLeft> createState() => _EndDrawerLeftState();
}

class _EndDrawerLeftState extends State<EndDrawerLeft> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/images/Islam.jpg'),
          ),
          SizedBox(
            height: 20,
          ),
          Text('Исламбек')
        ],
      ),
    );
  }
}
