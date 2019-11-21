import 'package:flutter/material.dart';
import 'package:flutter_structure/widgets/screens/base_screen.dart';

// First screen of the application
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: 'Home Screen',
      child: Column(children: <Widget>[
        Expanded(
          child: Center(
            child: Text('Welcome in Flutter Structure'),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.red,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.yellow,
          ),
        ),
      ]),
    );
  }
}
