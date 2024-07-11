import 'package:flutter/material.dart';

class PStless extends StatelessWidget {

  final String texto;

  const PStless(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Stateless Página"),
      ),
      body: Center(
        child: Text(texto),
      ),
      );
  }
}