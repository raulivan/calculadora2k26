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
        title: Text('Calculadora 2k26',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold
        )),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Display(),
          TextButton(onPressed: (){}, child: Text('9'))
        ],
      ),
    );
  }
}