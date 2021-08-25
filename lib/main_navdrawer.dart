import 'package:flutter/material.dart';
import './nav-drawer.dart';

void main() {
  runApp(MaterialApp(
    title: 'Belajar Nav Drawer',
    home: BelajarNavDrawer(),
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
  ));
}

class BelajarNavDrawer extends StatefulWidget {
  BelajarNavDrawer({Key? key}) : super(key: key);

  @override
  _BelajarNavDrawerState createState() => _BelajarNavDrawerState();
}

class _BelajarNavDrawerState extends State<BelajarNavDrawer> {
  // setiap 1 menu memiliki index
  // scaffold key yang sama dengan index (unique)
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => _scaffoldKey.currentState!.openDrawer(),
          icon: Icon(Icons.menu),
        ),
        title: Text('Belajar Nav Drawer'),
        actions: <Widget>[
          IconButton(
            onPressed: () => _scaffoldKey.currentState!.openEndDrawer(),
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      drawer: DrawerWidget(),
      endDrawer: DrawerWidget(),
      body: Center(
        child: Text(
          'Navigation Drawer pada Flutter',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
