import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BelajarBottomNavBar(),
    );
  }
}

class BelajarBottomNavBar extends StatefulWidget {
  BelajarBottomNavBar({Key? key}) : super(key: key);

  @override
  _BelajarBottomNavBarState createState() => _BelajarBottomNavBarState();
}

class _BelajarBottomNavBarState extends State<BelajarBottomNavBar> {
  // menginisialisasikan nilai awal
  int _selectedNavbar = 0;

  // method untuk mengubah state
  void _changeSelectedNavbar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Bottom NavBar'),
      ),
      body: Center(
        child: Text(
          'Tab index aktif: $_selectedNavbar',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavbar,
      ),
    );
  }
}
