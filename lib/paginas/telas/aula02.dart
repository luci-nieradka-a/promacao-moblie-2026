import 'package:flutter/material.dart';

class Aula02 extends StatelessWidget {
  const Aula02({super.key});

  @override
  Widget build(BuildContext context) {
    // Construindo widget customizavel (Reaproveitamento de código)
    Widget contruirLinha( MainAxisAlignment alinhamento, 
    IconData icone1, 
    IconData icone2, 
    IconData icone3,
    ){
      return Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
              ),
              // Criando uma linha que alinha seu conteúdo no início
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green, width: 2),
                    ),
                    child: Icon(Icons.one_k_outlined),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green, width: 2),
                    ),
                    child: Icon(Icons.access_time_filled_rounded),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green, width: 2),
                    ),
                    child: Icon(Icons.account_tree_sharp),
                  ),
                ],
              ),
            );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Aula 02 - Rows e Columns"),
      ),
      // Cria uma barra de rolagem para o conteúdo da tela
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              _contruirLinha(MainAxisAlignment.start, Icons.seven, )
              height: 20,
              child: Text("Start (Padrão)"),
            ),
            
            // Definido uma coluna
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
              ),
              height: 200,
              // Criando uma coluna que alinha seu conteúdo no início
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green, width: 2),
                    ),
                    child: Icon(Icons.one_k_outlined),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green, width: 2),
                    ),
                    child: Icon(Icons.access_time_filled_rounded),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green, width: 2),
                    ),
                    child: Icon(Icons.account_tree_sharp),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}