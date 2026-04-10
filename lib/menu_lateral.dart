import 'package:flutter/material.dart';

class MenuLateral extends StatefulWidget {
  const MenuLateral({super.key});

  @override
  State<MenuLateral> createState() => _MenuLateralState();
}

class _MenuLateralState extends State<MenuLateral> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
           DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.tealAccent
          ),
          child: Text('Cruso Flutter'),
           ), 
        ], 
      ),
    ); 
  }
}
