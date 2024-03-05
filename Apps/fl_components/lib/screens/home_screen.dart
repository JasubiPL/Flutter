import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/widgets/my_appbar_widget.dart';
import 'package:flutter/material.dart';
    
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
    
  @override
  Widget build(BuildContext context) {
  final  routes = AppRautes.menuOptions;

    return Scaffold(
      appBar: const MyAppBar(
        appBarTitle: 'Componentes en Flutter',
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile(
          leading: Icon(routes[i].icon, color: AppTheme.primary,),
          title: Text(routes[i].name),
          onTap: () {
            Navigator.pushNamed(context, routes[i].route );
          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: routes.length,
        )
    );
  }
}