import 'package:flutter/material.dart';

class bottomBar extends StatefulWidget {
  const bottomBar({super.key});

  @override
  State<bottomBar> createState() => _bottomBarState();
}

class _bottomBarState extends State<bottomBar> {
  int selectedIndex = 0;

  static const List<Widget> widgetOptions = <Widget>[
    Text('Home'),
    Text('Search'),
    Text('Notifications'),
    Text('Profile'),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: widgetOptions.elementAt(selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.deepOrange,),
              label: 'Home',

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search,color: Colors.deepOrange),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications,color: Colors.deepOrange),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,color: Colors.deepOrange),
              label: 'Profile',
            ),
        ],
          currentIndex: selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: onItemTapped,
        ),
    );
  }
}
