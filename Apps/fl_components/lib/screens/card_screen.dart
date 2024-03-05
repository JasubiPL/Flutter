import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';
    
class CardScreen extends StatelessWidget {
  const CardScreen({super.key});
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary,),
                title: Text('Soy un titulo'),
                subtitle: Text('lorem xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
              ),
            ),
          )
        ],
      )
    );
  }
}