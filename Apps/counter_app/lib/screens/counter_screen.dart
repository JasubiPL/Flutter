import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

    void decrease() {
    if(counter <= 0){
      counter = 0;
    }else{
      counter--;
    }
    setState(() {});
  }

    void reset() {
    counter = 0;
    setState(() {});
  }
  
  @override
  Widget build(BuildContext context) {

    //Creamos una variable personalizada
    const text_30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 25),
        centerTitle: true,
        title: const Text('Jasubi Counter 🧑‍💻'),
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
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    super.key, 
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.red ,
          child: const Icon( Icons.remove, color: Colors.white, ),
          onPressed: () => decreaseFn(),
        ),

        FloatingActionButton(
          backgroundColor: Colors.teal ,
          child: const Icon( Icons.replay_outlined, color: Colors.white, ),
          onPressed: () => resetFn(),
        ),

        FloatingActionButton(
          backgroundColor: Colors.green ,
          child: const Icon( Icons.add, color: Colors.white, ),
          onPressed: () => increaseFn(),
        ),
      ],
    );
  }
}