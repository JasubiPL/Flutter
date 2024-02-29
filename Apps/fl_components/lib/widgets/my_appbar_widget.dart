import 'package:flutter/material.dart';
    
 class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String appBarTitle;
  
  const MyAppBar({
    super.key, 
    required this.appBarTitle
    });



  @override
  Widget build(BuildContext context) {
    return  AppBar(
      foregroundColor: Colors.white,
      backgroundColor: Colors.cyan,
      centerTitle: true,
      title: Text(appBarTitle, style: const TextStyle(color: Colors.white),),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}