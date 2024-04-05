// ignore_for_file: prefer_const_constructors, sort_child_properties_last
import "package:flutter/material.dart";
import "dart:math";

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ignore: prefer_final_fields
  var _frases = [
    "Só sei que nada sei.",
    "O ignorante afirma, o sábio duvida, o sensato reflete.",
    "Inteligência sem ambição é um pássaro sem asas.",
    "Quem nunca cometeu um erro nunca tentou algo novo."
  ];

  // ignore: prefer_final_fields
  var _fraseGerada = "Clique aqui para gerar uma frase!";

  void _numeroAleatorio() {

    var numeroSorteado = Random().nextInt(_frases.length);
    
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        decoration:
            BoxDecoration(border: Border.all(width: 3, color: Colors.amber)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/logo.png'),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                  color: Colors.black),
            ),
            ElevatedButton(
              child: Text(
                "Gerar Frase",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: _numeroAleatorio,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
            )
          ],
        ),
      ),
    );
  }
}
