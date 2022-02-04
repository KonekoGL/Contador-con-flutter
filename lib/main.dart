import 'package:cont_app/Screens/counter_screen.dart';
//import 'package:cont_app/Screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        /*appBar: AppBar(
          title: const Text('Material App Bar'),
        ),*/
        body:CounterScreen(), 
        //HomeScreen(),
        ),
    );
  }
}