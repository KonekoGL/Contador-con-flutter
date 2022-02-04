import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
 const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

int counter=10;

void increase(){
  counter++;
  setState(() {});
}

void decrease(){
  counter--;
  setState(() {
    
  });
}

void reset(){
  counter=0;
  setState(() {
    
  });
}

  @override
  Widget build(BuildContext context) {


    var fontSize30=const TextStyle(fontSize: 30);
  
    


    return Scaffold(
      appBar: AppBar(
        title: const Text("CounterScreen"),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn:reset,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFn,decreaseFn,resetFn;
  
  const CustomFloatingActions({
    Key? key, 
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:  [
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          onPressed:()=>increaseFn(),
        ),
        
        FloatingActionButton(
          child: const Icon(Icons.restore),
          onPressed:()=>resetFn(),
        ),
       
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed:(){
            decreaseFn();
            },
        ),
      ],
    );
  }
}