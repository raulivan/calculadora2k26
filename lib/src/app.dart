import 'package:calculadora2026/src/ui/views/home/home_page.dart';
import 'package:flutter/material.dart';

class CalculadorApp extends StatelessWidget {
  const CalculadorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora 2k26',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.blue),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}