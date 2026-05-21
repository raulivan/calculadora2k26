import 'package:calculadora2026/src/ui/views/home/widgets/botao_operacao_widget.dart';
import 'package:calculadora2026/src/ui/views/home/widgets/botao_widget.dart';
import 'package:calculadora2026/src/ui/views/home/widgets/display_widget.dart';
import 'package:calculadora2026/src/ui/views/view_models/home_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = HomeController();

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
          Display(controller: _controller.displayController),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Botao(texto: "<", onPressed: () {}),
              Botao(texto: "C", onPressed: ()=> _controller.clear()),
              Botao(texto: "%", onPressed: () {}),
              BotaoOperacao(texto: "/", onPressed:() => _controller.onPressedOperacao("/")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Botao(texto: "7", onPressed: () => _controller.onPressedDigitos("7")),
              Botao(texto: "8", onPressed: () => _controller.onPressedDigitos("8")),
              Botao(texto: "9", onPressed: () => _controller.onPressedDigitos("9")),
              BotaoOperacao(texto: "X", onPressed: () => _controller.onPressedOperacao("x")),
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Botao(texto: "4", onPressed: () => _controller.onPressedDigitos("4")),
              Botao(texto: "5", onPressed: () => _controller.onPressedDigitos("5")),
              Botao(texto: "6", onPressed: () => _controller.onPressedDigitos("6")),
              BotaoOperacao(texto: "-", onPressed: () => _controller.onPressedOperacao("-")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Botao(texto: "1", onPressed: () => _controller.onPressedDigitos("1")),
              Botao(texto: "2", onPressed: () => _controller.onPressedDigitos("2")),
              Botao(texto: "3", onPressed: () => _controller.onPressedDigitos("3")),
              BotaoOperacao(texto: "+", onPressed: () => _controller.onPressedOperacao("+")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Botao(texto: "+-", onPressed: () {}),
              Botao(texto: "0", onPressed: () => _controller.onPressedDigitos("0")),
              Botao(texto: ",", onPressed: () {}),
              BotaoOperacao(texto: "=", onPressed: () => _controller.onPressedCacular()),
            ],
          ),
        ],
      ),
    );
  }
}
