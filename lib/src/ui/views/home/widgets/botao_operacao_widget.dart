import 'package:flutter/material.dart';

class BotaoOperacao extends StatelessWidget {
  final String texto;
  final  void Function()? onPressed;
  const BotaoOperacao({super.key, required this.texto, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      //Ocorre quando precionar o botão
      onPressed: onPressed,
      // Aparência do botão
      style: FilledButton.styleFrom(
        // Define a cor de fundo do botão
        backgroundColor: Colors.orange,
        // Define o tamanho fixo do botão
        fixedSize: Size(60, 60),
        // Define a forma do botão
        shape: RoundedRectangleBorder(
          // Define cantos arredondados para o botão
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      // Personaliza a aparecia do texto do botão
      child: Text(texto, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
    );
  }
}
