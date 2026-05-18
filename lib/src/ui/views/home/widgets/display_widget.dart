import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  const Display({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Define o espaçamento interno do widget
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        //Ajustando a fonte
        style: TextStyle(fontSize: 20, color: Colors.white),
        //Quantidade de Linhas
        maxLines: 3,
        minLines: 3,
        //Alinhamento do Texto
        textAlign: TextAlign.end,
        //Tipo de teclado
        keyboardType: TextInputType.number,
        //Definindo como somente leitura
        // readOnly: true,
        // Alinhamento vertical do texto
        textAlignVertical: TextAlignVertical.bottom,
        // Definir a aparência da caixa de texto
        decoration: InputDecoration(
          //Cor de Fundo da caixa de texto
          filled: true,
          fillColor: const Color.fromARGB(255, 54, 54, 54),
          // Borda padrão da caixa de texto
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: const Color.fromARGB(255, 54, 54, 54), width: 3),
          ),
          //Borda quando recebe foco
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.yellow, width: 3),
          ),
        ),
      ),
    );
  }
}
