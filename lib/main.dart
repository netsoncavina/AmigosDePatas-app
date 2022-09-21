import 'package:flutter/material.dart';
import 'package:amigos_de_patas/views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amigos de Patas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.blue,
        // ignore: prefer_const_constructors
        textTheme: TextTheme(
          bodyText2: const TextStyle(color: Colors.white),
        ),
      ),
      home: HomePage(),
    );
  }
}
