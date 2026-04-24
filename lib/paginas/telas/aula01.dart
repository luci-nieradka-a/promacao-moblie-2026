import 'package:flutter/material.dart';

class Aula01 extends StatelessWidget {
  const Aula01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("01 - Container"),
      ),
      // Center centraliza o conteúdo
      body: Center(
        // Column coloca vários elementos como filhos
        // Organiza os elementos na vertical
        child: Column(
          children: [
            // Container com largura e altura
            Container(
              width: double.infinity, // Retorna o valor total disponível
              height: 100,
              color: Colors.deepOrange,
              child: Center(child: Text("Primeiro Container"),
               )
              ),
              // Container com padding e margin
              Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.all(16),
                color: Colors.blueAccent,
                child: const Center(
                  child: Text(
                    "Segundo Container",
                    style: TextStyle(color: Colors.white10),
                    ),
                ),
              )
          ],
        ),
      )
    );
  }
}
