// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:qr_generator_app/Presentation/Screens/Homepage/UI/welcome.dart';
import '../Screens/Homepage/UI/home_page.dart';

class RouteGenerator {
  Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => const HomePage(title: 'Explore USKT Admin'));
      case '//':
        return MaterialPageRoute(builder: (_) => WelcomePage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
