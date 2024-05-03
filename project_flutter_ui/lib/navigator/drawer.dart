import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Drawer Example'),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Container(
                color: Colors.blue[100],
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                  ),
                  accountName: const Text(
                    'Khanif Zyen',
                    style: TextStyle(color: Colors.black),
                  ),
                  accountEmail: const Text(
                    "khanif.zyen@gmail.com",
                    style: TextStyle(color: Colors.black),
                  ),
                  currentAccountPicture: const CircleAvatar(
                    child: FlutterLogo(size: 50),
                  ),
                ),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
