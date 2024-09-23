import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() {
  runApp(const ProjetoIntegrado());
}

class ProjetoIntegrado extends StatelessWidget {
  const ProjetoIntegrado({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Atividades em São José dos Campos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
