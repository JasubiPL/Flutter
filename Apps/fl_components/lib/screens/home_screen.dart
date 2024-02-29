import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/widgets/my_appbar_widget.dart';
    
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        appBarTitle: 'Componentes en Flutter',
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.outbond),
          title: const Text('Nombre Ruta'),
          onTap: () {
            final route = MaterialPageRoute(builder: (context) => ListView2Screen(),);
            Navigator.push(context, route );
          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: 5,
        )
    );
  }
}