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
          title: Text('CustomScrollView Example'),
        ),
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              pinned: true,
              snap: true,
              floating: true,
              expandedHeight: 160,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  "UNISNU Jepara",
                  style: TextStyle(color: Colors.black),
                ),
                background: FlutterLogo(),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.blue[200],
                  height: 100,
                  child: Center(
                    child: Text(
                      "Item $index",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                );
              }, childCount: 20),
            ),
          ],
        ),
      ),
    );
  }
}
