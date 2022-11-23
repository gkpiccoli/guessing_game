import 'package:flutter/material.dart';
import 'package:guessing_game/initial_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GuessingGame(),
    );
  }
}

///Colocar animação com a frase: "Bem-vindo ao nosso jogo de adivinhação"