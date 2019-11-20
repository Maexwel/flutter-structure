import 'package:flutter/material.dart';
import 'package:flutter_structure/theme/theme.dart' as theme;
import 'package:flutter_structure/widgets/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of the application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: theme.classic,
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
        });
  }
}
