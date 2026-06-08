import 'package:calculadora2026/src/ui/views/home/widgets/botao_operacao_widget.dart';
import 'package:calculadora2026/src/ui/views/home/widgets/botao_widget.dart';
import 'package:calculadora2026/src/ui/views/home/widgets/display_widget.dart';
import 'package:calculadora2026/src/ui/view_models/home_view_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _viewModel = HomeViewModel();

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
          Display(controller: _viewModel.displayController),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Botao(texto: "<", backgroundColor: Colors.grey, onPressed: () => _viewModel.onPressedApagar()),
              Botao(texto: "C", backgroundColor: Colors.grey,onPressed: ()=> _viewModel.onPressedLimpar()),
              Botao(texto: "%", backgroundColor: Colors.grey, onPressed: () => _viewModel.onPressedOperacao("%")),
              BotaoOperacao(texto: "/", onPressed:() => _viewModel.onPressedOperacao("/")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Botao(texto: "7", onPressed: () => _viewModel.onPressedDigitos("7")),
              Botao(texto: "8", onPressed: () => _viewModel.onPressedDigitos("8")),
              Botao(texto: "9", onPressed: () => _viewModel.onPressedDigitos("9")),
              BotaoOperacao(texto: "X", onPressed: () => _viewModel.onPressedOperacao("x")),
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Botao(texto: "4", onPressed: () => _viewModel.onPressedDigitos("4")),
              Botao(texto: "5", onPressed: () => _viewModel.onPressedDigitos("5")),
              Botao(texto: "6", onPressed: () => _viewModel.onPressedDigitos("6")),
              BotaoOperacao(texto: "-", onPressed: () => _viewModel.onPressedOperacao("-")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Botao(texto: "1", onPressed: () => _viewModel.onPressedDigitos("1")),
              Botao(texto: "2", onPressed: () => _viewModel.onPressedDigitos("2")),
              Botao(texto: "3", onPressed: () => _viewModel.onPressedDigitos("3")),
              BotaoOperacao(texto: "+", onPressed: () => _viewModel.onPressedOperacao("+")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Botao(width: 170, texto: "0", onPressed: () => _viewModel.onPressedDigitos("0")),
              Botao(texto: ",", onPressed: () => _viewModel.onPressedDigitos(".")),
              BotaoOperacao(texto: "=", onPressed: () => _viewModel.onPressedCacular()),
            ],
          ),
        ],
      ),
    );
  }
}
