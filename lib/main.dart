import 'package:flutter/material.dart';
import 'paginas/lista_personagens_page.dart';

void main() {
  runApp(const PersonagensApp());
}

class PersonagensApp extends StatelessWidget {
  const PersonagensApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lista de Personagens',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Arial',
      ),
      home: const ListaPersonagensPage(),
    );
  }
}