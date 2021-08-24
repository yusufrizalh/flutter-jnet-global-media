import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BelajarList(),
    );
  }
}

class BelajarList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar List'),
      ),
      body: ListView(
        // scrollable
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Penggunaan ListView Flutter',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis blandit turpis cursus in hac habitasse platea. Quam pellentesque nec nam aliquam. Vitae ultricies leo integer malesuada nunc vel risus commodo. Suspendisse ultrices gravida dictum fusce ut. At tellus at urna condimentum mattis. Ornare aenean euismod elementum nisi quis eleifend quam. Accumsan in nisl nisi scelerisque eu. Consectetur lorem donec massa sapien faucibus et molestie ac. Morbi tristique senectus et netus et. Diam sit amet nisl suscipit adipiscing bibendum est ultricies. Proin sagittis nisl rhoncus mattis. Vitae suscipit tellus mauris a diam maecenas sed. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis blandit turpis cursus in hac habitasse platea. Quam pellentesque nec nam aliquam. Vitae ultricies leo integer malesuada nunc vel risus commodo. Suspendisse ultrices gravida dictum fusce ut. At tellus at urna condimentum mattis. Ornare aenean euismod elementum nisi quis eleifend quam. Accumsan in nisl nisi scelerisque eu. Consectetur lorem donec massa sapien faucibus et molestie ac. Morbi tristique senectus et netus et. Diam sit amet nisl suscipit adipiscing bibendum est ultricies. Proin sagittis nisl rhoncus mattis. Vitae suscipit tellus mauris a diam maecenas sed. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis blandit turpis cursus in hac habitasse platea. Quam pellentesque nec nam aliquam. Vitae ultricies leo integer malesuada nunc vel risus commodo. Suspendisse ultrices gravida dictum fusce ut. At tellus at urna condimentum mattis. Ornare aenean euismod elementum nisi quis eleifend quam. Accumsan in nisl nisi scelerisque eu. Consectetur lorem donec massa sapien faucibus et molestie ac. Morbi tristique senectus et netus et. Diam sit amet nisl suscipit adipiscing bibendum est ultricies. Proin sagittis nisl rhoncus mattis. Vitae suscipit tellus mauris a diam maecenas sed. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis blandit turpis cursus in hac habitasse platea. Quam pellentesque nec nam aliquam. Vitae ultricies leo integer malesuada nunc vel risus commodo. Suspendisse ultrices gravida dictum fusce ut. At tellus at urna condimentum mattis. Ornare aenean euismod elementum nisi quis eleifend quam. Accumsan in nisl nisi scelerisque eu. Consectetur lorem donec massa sapien faucibus et molestie ac. Morbi tristique senectus et netus et. Diam sit amet nisl suscipit adipiscing bibendum est ultricies. Proin sagittis nisl rhoncus mattis. Vitae suscipit tellus mauris a diam maecenas sed. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis blandit turpis cursus in hac habitasse platea. Quam pellentesque nec nam aliquam. Vitae ultricies leo integer malesuada nunc vel risus commodo. Suspendisse ultrices gravida dictum fusce ut. At tellus at urna condimentum mattis. Ornare aenean euismod elementum nisi quis eleifend quam. Accumsan in nisl nisi scelerisque eu. Consectetur lorem donec massa sapien faucibus et molestie ac. Morbi tristique senectus et netus et. Diam sit amet nisl suscipit adipiscing bibendum est ultricies. Proin sagittis nisl rhoncus mattis. Vitae suscipit tellus mauris a diam maecenas sed.',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
