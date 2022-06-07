import 'package:drawer/pages/images_page.dart';
import 'package:flutter/material.dart';

class DrawerRight extends StatefulWidget {
  const DrawerRight({Key? key}) : super(key: key);

  @override
  State<DrawerRight> createState() => _DrawerRightState();
}

class _DrawerRightState extends State<DrawerRight> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/Islam.jpg'),
            ),
          ),
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const ListTile(
                        leading: Icon(Icons.person),
                        title: Text('Profile'),
                        trailing: Icon(Icons.arrow_right),
                      ),
                      ListTile(
                        leading: const Icon(Icons.image),
                        title: const Text('Images'),
                        trailing: const Icon(Icons.arrow_right),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return const ImagesPage();
                            }),
                          );
                        },
                      ),
                      const ListTile(
                        leading: Icon(Icons.file_copy),
                        title: Text('Files'),
                        trailing: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      ElevatedButton(
                          onPressed: null,
                          child: Text(
                            'Выход',
                            style: TextStyle(color: Colors.black),
                          )),
                      ElevatedButton(
                          onPressed: null,
                          child: Text(
                            'Регистрация',
                            style: TextStyle(color: Colors.black),
                          ))
                    ],
                  ),
                ],
              )),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

