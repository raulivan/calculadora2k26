import 'package:flutter/material.dart';

class HomeController{
  // Controlador do Diplay
  final  displayController = TextEditingController(text: "0");
  String _primeiroOperando = "";
  String _segundoOperando = "";
  String _operacao = "";
  bool _ehSegundoOperador = false;

  void onPressedDigitos(String digito) {
    if (displayController.text == "0") {
      displayController.text = "";
    } 
    displayController.text += digito;
    if (_ehSegundoOperador == false) { 
      _primeiroOperando += digito;
    } else {
      _segundoOperando += digito;
    }
  }

  void onPressedOperacao(String op) {
    _ehSegundoOperador = true;
    _operacao = op;
    displayController.text += " $op ";
  }

  void onPressedCacular() {
    double primeiroOperandoDouble = double.parse(_primeiroOperando);
    double segundoOperandoDouble = double.parse(_segundoOperando);
    double result = 0.0;

    switch (_operacao) {
      case '+':
        result = primeiroOperandoDouble + segundoOperandoDouble;
        break;
      case '-':
        result = primeiroOperandoDouble - segundoOperandoDouble;
        break;
      case 'x':
        result = primeiroOperandoDouble * segundoOperandoDouble;
        break;
      case '/':
        result = segundoOperandoDouble != 0 ? primeiroOperandoDouble / segundoOperandoDouble : 0.0;
        break;
    }

    displayController.text = result.toString();
    _primeiroOperando = result.toString();
    _segundoOperando = "";
    _operacao = '';
    _ehSegundoOperador = true;
  }

  void clear() {
    displayController.text = '0';
    _primeiroOperando = '';
    _segundoOperando = '';
    _operacao = '';
    _ehSegundoOperador = false;
  }

}