import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/developer_info.dart'; 

class AppRoutes {
  static const String initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'developer': (BuildContext context) => const DeveloperInfoScreen(),
  };
}