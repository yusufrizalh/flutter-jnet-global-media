import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Belajar Routing',
      theme: ThemeData(primaryColor: Colors.blue[900]),
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Route route =
                  MaterialPageRoute(builder: (context) => AboutPage());
              Navigator.push(context, route);
            },
            child: Text('Tap to About Page')),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Page'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Back to Home Page')),
      ),
    );
  }
}
