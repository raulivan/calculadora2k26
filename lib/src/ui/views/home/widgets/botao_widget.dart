import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final String texto;
  final  void Function()? onPressed;
  const Botao({super.key, required this.texto, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: FilledButton(
        //Ocorre quando precionar o botão
        onPressed: onPressed,
        // Aparência do botão
        style: FilledButton.styleFrom(
          // Define a cor de fundo do botão
          backgroundColor: const Color.fromARGB(255, 54, 54, 54),
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
      ),
    );
  }
}
