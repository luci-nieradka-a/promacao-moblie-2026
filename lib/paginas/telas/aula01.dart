import 'package:flutter/material.dart';

class Aula01 extends StatelessWidget {
  const Aula01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("01 - Container")
        ),
      body: Container(
        child: Text("Container"),
      ),
    ); // Scaffold
  }
}
