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
          title: Text('Bottom Navigation Bar Example'),
        ),
        body: MyBody(),
      ),
    );
  }
}

class MyBody extends StatefulWidget {
  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  List<Map<String, dynamic>> menuItems = [
    {
      "title": "Home",
      "icon": Icons.home,
    },
    {
      "title": "Chart",
      "icon": Icons.shopping_cart,
    },
    {
      "title": "Favorites",
      "icon": Icons.star_border,
    },
    {
      "title": "Account",
      "icon": Icons.person,
    },
  ];

  int _selectedItem = 0;

  String _text = "Home";

  void _onItemTapped(int index) {
    setState(() {
      _selectedItem = index;
      _text = menuItems[index]["title"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Kamu klik: $_text',
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: 20),
          BottomNavigationBar(
            backgroundColor: Colors.white,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            unselectedItemColor: Colors.black87,
            elevation: 32,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: const TextStyle(
              height: 1.5,
              fontSize: 12,
            ),
            unselectedLabelStyle: const TextStyle(
              height: 1.5,
              fontSize: 12,
            ),
            items: menuItems
                .map(
                  (item) => BottomNavigationBarItem(
                    icon: Icon(item["icon"]),
                    label: item["title"],
                    activeIcon: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                      ),
                      child: Icon(item["icon"]),
                    ),
                  ),
                )
                .toList(),
            currentIndex: _selectedItem,
            selectedItemColor: Colors.white,
            onTap: _onItemTapped,
          ),
        ],
      ),
    );
  }
}
