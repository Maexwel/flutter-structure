import 'package:flutter/material.dart';
import 'package:flutter_structure/state/providers.dart';
import 'package:flutter_structure/theme/theme.dart' as theme;
import 'package:flutter_structure/widgets/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers, // state definition
      child: MaterialApp(
          title: 'Flutter structure',
          theme: theme.classic,
          initialRoute: '/',
          routes: {
            '/': (context) => HomeScreen(),
          }),
    );
  }
}
