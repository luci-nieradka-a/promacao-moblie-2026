import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu Perfil"),
        // Centraliza o título da AppBar
        centerTitle: true,
      ), 
      body: SingleChildScrollView(
        child: const Center(
          child: Text("Meu Perfil"),
        ),
      ),
    );
  }
}