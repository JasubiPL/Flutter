import 'package:fl_components/widgets/my_appbar_widget.dart';
import 'package:flutter/material.dart';
    
class ListView2Screen extends StatelessWidget {

  final options = const ['Spiderman', 'Wolverine', 'Iron Man', 'Black Panter', 'Howkey'];

  const ListView2Screen({super.key});
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
       appBarTitle: 'List View 2',
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]), 
          trailing: const Icon(Icons.keyboard_arrow_right_outlined, color: Colors.cyan,),
          onTap: () {
            final game = options[index];
            print(game);
          },
          ),
        separatorBuilder: (_, __) => const Divider(), 
      )
    );
  }
}