import 'package:flutter/material.dart';
import 'package:tarea_2/home_page.dart';
//import 'package:tarea_2/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bienvenidos al ITESO'),
        ),
        body: HomePage(),
      ),
    );
  }
}
