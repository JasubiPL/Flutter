import 'package:flutter/material.dart';
    
class ListView1Screen extends StatelessWidget {

  final options = const ['Spiderman', 'Wolverine', 'Iron Man', 'Black Panter', 'Howkey'];

  const ListView1Screen({super.key});
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Listview Tipo 1', style: TextStyle(color: Colors.white),),
      ),
      body: ListView(
        children: [
          ...options.map( (option) => (
             ListTile(
              title: Text(option),
              trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.blue,),
            )
          )),
        ],
      )
    );
  }
}