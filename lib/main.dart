import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,    
  )
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _novaFrase = [
    "Quando estiverem dizendo: “Paz e segurança!”, então virá instantaneamente sobre eles a repentina destruição. — 1 Tes. 5:3.",
    "Naquele tempo seu povo escapará. — Dan. 12:1.",
    "O verdadeiro amigo ama em todos os momentos. — Pro. 17:17.",
    "Poderão apagar todas as flechas ardentes do Maligno. — Efé. 6:16.",
    "Sou de temperamento brando e humilde de coração. — Mat. 11:29.",
    "Continue na expectativa dela! Pois se cumprirá sem falta. — Hab. 2:3.",
    "Eu [vou] me santificar diante dos olhos delas por meio de você, ó Gogue. — Eze. 38:16.",
    "Continuem levando os fardos uns dos outros. — Gál. 6:2.",
    "Se foi assim que Deus nos amou, então nós também temos a obrigação de amar uns aos outros. — 1 João 4:11."

  ];

  var _fraseGerada = "Clique no botão para gerar nova frase";

  void _gerarFrase () {
    var numeroAleatorio = Random().nextInt(_novaFrase.length);

    setState(() {
      _fraseGerada = _novaFrase [numeroAleatorio];
    });
  }
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Frases do dia"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            // width: double.infinity,
            // decoration: BoxDecoration(border: Border.all(width: 3, color: Colors.amber)),
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                
                Image.asset("images/logo.png"),

                Text(
                  _fraseGerada,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                
                ElevatedButton(
                  onPressed: _gerarFrase,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                  child: Text(
                    "Nova Frase",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
        );
  }
}