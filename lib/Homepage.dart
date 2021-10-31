import 'package:c24/page1.dart';
import 'package:c24/page2.dart';
import 'package:c24/page3.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  var _currentIndex = 0;
  final pages = [
    page1(),
    page2(),
    page3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(

      ),
      appBar: AppBar(
        leading: Icon(Icons.people),
        title: Text("Class 24"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_rounded),
          ),
        ],
        elevation: 20,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){setState(() {
          _currentIndex=index;
        });},
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            title: Text("টাইটেল দিলাম"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("টাইটেল দিলাম"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            title: Text("টাইটেল দিলাম"),
          ),
        ],
      ),
      body: pages[
      _currentIndex
      ],
    );
  }
}
