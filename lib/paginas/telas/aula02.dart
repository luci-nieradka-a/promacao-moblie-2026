import 'package:flutter/material.dart';

class Aula02 extends StatelessWidget {
  const Aula02({super.key});

  @override
  Widget build(BuildContext context) {
    // Construindo widget customizavel (Reaproveitamento de código)
    Widget _construirColuna(
      MainAxisAlignment alinhamento,
      IconData icone1,
      IconData icone2,
      IconData icone3,
    ) {
      // Definido uma coluna
      return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
        ),
        height: 200,
        // Criando uma coluna que alinha seu conteúdo no início
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: alinhamento,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2),
              ),
              child: Icon(icone1),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 2),
              ),
              child: Icon(icone2),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 2),
              ),
              child: Icon(icone3),
            ),
          ],
        ),
      );
    }

    ;

    Widget _construirLinha(
      MainAxisAlignment alinhamento,
      IconData icone1,
      IconData icone2,
      IconData icone3,
    ) {
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
              height: 20,
              child: Text("Start (Padrão)"),
            ),
            _construirLinha(
              MainAxisAlignment.start,
              Icons.seven_k,
              Icons.abc,
              Icons.ac_unit_outlined,
            ),
             _construirColuna(
              MainAxisAlignment.start,
              Icons.abc,
              Icons.abc_rounded,
              Icons.ac_unit,
            ),
            const SizedBox(
            height: 20, 
            child: Text("Start")
            ),
            _construirLinha(
              MainAxisAlignment.start,
              Icons.account_box_sharp,
              Icons.add_a_photo,
              Icons.add_home_rounded,
            ),
           _construirColuna(
              MainAxisAlignment.start,
              Icons.account_circle_rounded,
              Icons.accessibility_new,
              Icons.ac_unit_rounded,
            ),
            const SizedBox(
            height: 20, 
            child: Text("Center")
            ),
            _construirLinha(
              MainAxisAlignment.start,
              Icons.add_alert_outlined,
              Icons.accessible_rounded,
              Icons.add_home,
            ),
            _construirColuna(
              MainAxisAlignment.start,
              Icons.access_alarm_rounded,
              Icons.ad_units,
              Icons.abc_outlined,
            ),
             const SizedBox(
              height: 20,
              child: Text("End"),
            ),
            _construirLinha(
              MainAxisAlignment.start,
              Icons.accessible_sharp,
              Icons.add_task,
              Icons.admin_panel_settings,
            ),
             const SizedBox(
            height: 20, 
            child: Text("Space Between"),
            ),
            _construirColuna(
              MainAxisAlignment.spaceBetween,
              Icons.add_road_outlined,
              Icons.add_to_drive_outlined,
              Icons.nine_mp_sharp,
            ),
             _construirLinha(
              MainAxisAlignment.start,
              Icons.accessible_sharp,
              Icons.add_task,
              Icons.admin_panel_settings,
            ),
             const SizedBox(
            height: 20, 
            child: Text("Space Around"),
            ),
            _construirColuna(
              MainAxisAlignment.spaceAround,
              Icons.add_road_outlined,
              Icons.add_to_drive_outlined,
              Icons.nine_mp_sharp,
            ),
             _construirLinha(
              MainAxisAlignment.spaceAround,
              Icons.accessible_sharp,
              Icons.add_task,
              Icons.admin_panel_settings,
            ),
             const SizedBox(
            height: 20, 
            child: Text("Space Evenly"),
            ),
            _construirColuna(
              MainAxisAlignment.spaceEvenly,
              Icons.add_road_outlined,
              Icons.add_to_drive_outlined,
              Icons.nine_mp_sharp,
            ),
             _construirLinha(
              MainAxisAlignment.spaceEvenly,
              Icons.accessible_sharp,
              Icons.add_task,
              Icons.admin_panel_settings,
            ),
        ],
          
        ),
      ),
    );
  }
}
