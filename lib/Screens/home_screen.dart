import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
 const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {


    var fontSize30=const TextStyle(fontSize: 30);
    int counter=10;


    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
        elevation: 0,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment:CrossAxisAlignment.center,
          children: [
            Text('Numero de clicks',style: fontSize30),
            Text('$counter',style:fontSize30),
            ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton:FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          counter++;
          print('hola mundo: $counter');
        },
      ),
    );
  }
}