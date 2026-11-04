import 'package:flutter/material.dart';
import 'package:flutter_app/my_home_page.dart';
import 'package:flutter_app/paginas/telas/aula01.dart';
import 'package:flutter_app/paginas/telas/aula02.dart';
import 'package:flutter_app/paginas/telas/aula03.dart';

final Map<String, WidgetBuilder> appRoutes = {
  "/": (context) => const MyHomePage(title: 'Página principal'),
  "/aula01": (context) => const Aula01(),
  "/aula02": (context) => const Aula02(),
  "/aula03": (context) => const Aula03(),
};