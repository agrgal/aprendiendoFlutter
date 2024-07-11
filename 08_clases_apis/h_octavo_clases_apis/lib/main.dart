// ignore_for_file: library_private_types_in_public_api

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

  final Empresa _facebook = new Empresa("Facebook","Mack Zukerberg",1000); // creo una variable local de esa clase

  @override
  void initState() {
    super.initState();
    print(_facebook.nombre);
    print(_facebook.propietario);
    print(_facebook.ingresoAnual);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trabajando con clases"),        
      ),
      body: Center(
        child: Text(
          "${_facebook.nombre}- ${_facebook.propietario} - ${_facebook.ingresoAnual}",
          style: const TextStyle( fontSize: 14.0, color: Colors.blue), 
          textAlign: TextAlign.justify,
        ),
      ), // Widget que se llama center 
      );
  }
} // fin de la clase inicio extends


/* ========= */
/* = Clases= */
/* ========= */

class Empresa { // definición de una clase
  late String nombre;
  late String propietario;
  late int ingresoAnual;

  // constructor
  Empresa(String nm, String pr, int ing) {
    nombre = nm; // inicializa nombre
    propietario = pr; // inicializa propietario
    ingresoAnual = ing; // inicializa ingreso Anual
  }
}

