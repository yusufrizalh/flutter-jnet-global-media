import 'package:flutter/material.dart';

// named route
void main() {
  runApp(MaterialApp(
    title: 'Belajar Routing',
    theme: ThemeData(primaryColor: Colors.blue[900]),
    routes: <String, WidgetBuilder>{
      '/home': (context) => HomePage(),
      '/about': (context) => AboutPage(),
      '/gallery': (context) => GalleryPage(),
    },
    initialRoute: '/home', // halaman depan
  ));
}

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery Page'),
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
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/home');
                Navigator.pop(context); // back button
              },
              child: Text('Back to Home Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/gallery');
              },
              child: Text('Tap to Gallery Page'),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/about');
            },
            child: Text('Tap to About Page')),
      ),
    );
  }
}
