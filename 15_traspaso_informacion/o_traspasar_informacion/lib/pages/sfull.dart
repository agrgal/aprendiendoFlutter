import 'package:flutter/material.dart';

class PStfull extends StatefulWidget {

  final String texto;

  const PStfull(this.texto,{super.key});

  @override
  State<PStfull> createState() => __PStfullState();
}

class __PStfullState extends State<PStfull> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Statefull Página',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Página StateFull'),
        ),
        body: Center(
          child: Text(widget.texto),
        ),
      ),
    );
  }
}