import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _frases = [
    "Quando você quer alguma coisa, todo o universo conspira para que você realize o seu desejo.",
    "Sentir é criar. Sentir é pensar sem ideias, e por isso sentir é compreender, visto que o Universo não tem ideias.",
    "O universo é tão vasto e somos tão pequenos habitando um curto espaço no tempo. Hoje estamos aqui; amanhã, ninguém sabe.",
    "Que o universo conspire sempre a nosso favor. Que os astros iluminem os nossos passos. Que o infinito seja o nosso lar.",
    "O universo está na natureza de todas as coisas. Na folha que cai, na flor que brota, em cada ser humano que nasce.",
    "Existe apenas um canto do universo que você pode ter certeza de melhorar: você mesmo.",
    "No universo, não existe insignificância, tudo flui e se conecta."
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase";

  void _gerarFrases() {
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Frases do Dia",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.black),
            ),
            Container(
              width: 280,
              height: 30,
              child: Material(
                color: Colors.green,
                child: InkWell(
                  onTap: _gerarFrases,
                  child: Text(
                    "Nova frase",
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
