// ignore_for_file: library_private_types_in_public_api

import 'package:a_primer_programa/paginas/pagina02.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  // este es el constructor. 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Mi aplicación",
      home: Inicio(),
    );
    
  }
} // fin de la clase mi app 

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  _InicioState createState() => _InicioState();
} // fin de la clase inicio

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navegacion"),        
      ),
      body: Column(
        // mainAxisSize: const MediaQuery.of(context).size.width,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Text(
                "Mi primer texto",
                textAlign: TextAlign.center ,
              ),            
            ),
            ElevatedButton(
              onPressed: (){ 
                // print("Presionaste el botón");
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context)=>const Pagina02()),
                  );
              }, 
              child: const Text("Ir a la otra página"),
            )
        ],        
      ), // Widget que se llama center 
      );
  }
} // fin de la clase inicio extends



