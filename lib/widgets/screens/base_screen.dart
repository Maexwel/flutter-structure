import 'package:flutter/material.dart';

// First screen of the application
class BaseScreen extends StatelessWidget {
  final Widget child; // Widget that will be injected
  final String title; // Title displayed in the app bar

  BaseScreen({@required this.child, @required this.title}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: child,
    );
  }
}
