import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BelajarSliverAppBar(),
    );
  }
}

class BelajarSliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              pinned: true,
              floating: true,
              expandedHeight: 200.0,
              backgroundColor: Colors.redAccent,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.symmetric(
                  // all(), only()
                  vertical: 16.0, // top bottom
                  horizontal: 6, // left right
                ),
                centerTitle: false,
                title: Text(
                  'Belajar SliverAppbar',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                background: Image(
                  image: AssetImage('assets/images/pexels-1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: Center(
          child: Text('Isian dari aplikasi Flutter'),
        ),
      ),
    );
  }
}
