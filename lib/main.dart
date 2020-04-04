import 'package:flutter/material.dart';
import 'package:foodmonk/router.dart';
import 'router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodmonk',
      theme: ThemeData(
        //  brightness: Brightness.dark,
        primaryColor: Colors.deepPurple,
        primarySwatch: Colors.amber,
        accentColor: Colors.deepPurpleAccent,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      initialRoute: loginRoute,
    );
  }
}
