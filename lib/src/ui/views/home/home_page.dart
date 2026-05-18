import 'package:calculadora2026/src/ui/views/home/widgets/botao_operacao_widget.dart';
import 'package:calculadora2026/src/ui/views/home/widgets/botao_widget.dart';
import 'package:calculadora2026/src/ui/views/home/widgets/display_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculadora 2k26',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Display(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Botao(texto: "<", onPressed: () {}),
              Botao(texto: "C", onPressed: () {}),
              Botao(texto: "%", onPressed: () {}),
              BotaoOperacao(texto: "/", onPressed: () {}),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Botao(texto: "7", onPressed: () {}),
              Botao(texto: "8", onPressed: () {}),
              Botao(texto: "9", onPressed: () {}),
              BotaoOperacao(texto: "X", onPressed: () {}),
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Botao(texto: "4", onPressed: () {}),
              Botao(texto: "5", onPressed: () {}),
              Botao(texto: "6", onPressed: () {}),
              BotaoOperacao(texto: "-", onPressed: () {}),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Botao(texto: "1", onPressed: () {}),
              Botao(texto: "2", onPressed: () {}),
              Botao(texto: "3", onPressed: () {}),
              BotaoOperacao(texto: "+", onPressed: () {}),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Botao(texto: "+-", onPressed: () {}),
              Botao(texto: "0", onPressed: () {}),
              Botao(texto: ",", onPressed: () {}),
              BotaoOperacao(texto: "=", onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
