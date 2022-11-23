import 'package:flutter/material.dart';
import 'dart:math';

class GuessingGame extends StatefulWidget {
  const GuessingGame({Key? key}) : super(key: key);

  @override
  State<GuessingGame> createState() => _GuessingGameState();
}

class _GuessingGameState extends State<GuessingGame> {

  var _imagemVazia = const AssetImage('images/jogo-da-idade');
  var _imagemRobo = const AssetImage('');
  String _msgResultado = '';

  late int nivel;
  late int numerodetentativas;

  void _escolha(String escolhaJogador) {
    var escolha = ['1', '2', '3'];

    setState(() {
      switch (nivel) {
        case 1:
          numerodetentativas = 20;
          break;

        case 2:
          numerodetentativas = 15;
          break;

        default:
          numerodetentativas = 15;
          break;
      }
    });

    setState(() {

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text ('Jogo da Advinhação',
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          toolbarHeight: 80,
        ),
        body: ListView(

              children: [
                Image(image: _imagemVazia,
                  height: 200,
                  width: 200,
                ),
                Padding(
                  padding: EdgeInsets.all(32.0),
                  child: Text('Escolha um nível de dificuldade para o jogo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.all(5.0),
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () => _escolha('1'),
                        child: ClipRRect(
                          child: Image.asset('images/numero_um.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _escolha('2'),
                        child: ClipRRect(
                          child: Image.asset('images/numero_dois.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _escolha('3'),
                        child: ClipRRect(
                          child: Image.asset('images/numero_tres.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
  }
}

