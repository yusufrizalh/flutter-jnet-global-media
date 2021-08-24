import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // constructor
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Flutter Dasar',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Belajar Flutter Dasar',
            style: TextStyle(color: Colors.purple),
          ),
          centerTitle: false,
          // backgroundColor: Colors.lightBlue,
          leading: Icon(Icons.home),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.blue, Colors.green]),
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                'Ayo belajar Flutter',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 34,
                    fontStyle: FontStyle.italic),
              ),
              Text('Flutter Inixindo'),
            ],
          ),
        ),
      ),
    );
  }
}
