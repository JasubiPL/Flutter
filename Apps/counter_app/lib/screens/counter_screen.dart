import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  
  int counter = 0;
  
  @override
  Widget build(BuildContext context) {

    //Creamos una variable personalizada
    const text_30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 25),
        centerTitle: true,
        title: const Text('CounterScreen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Número de Clicks', style: text_30),
            Text('$counter' , style: text_30),
          ]
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue ,
        child: const Icon( Icons.add, color: Colors.white, ),
        onPressed: () {
          counter++;
          setState(() {});
        },
        ),
    );
  }
}