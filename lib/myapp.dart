import 'package:flutter/material.dart';
import 'conteudo_lista.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Minha biblioteca',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ConteudoLista(),
    );
  }
}