import 'package:flutter/material.dart';
import './screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // mengirim argument
    final args = settings.arguments;
    switch (settings.name) {
      case '/': // initial route
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/about':
        return MaterialPageRoute(builder: (_) => AboutPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error Route'),
        ),
        body: Center(
          child: Text('Error Page'),
        ),
      );
    });
  }
}
