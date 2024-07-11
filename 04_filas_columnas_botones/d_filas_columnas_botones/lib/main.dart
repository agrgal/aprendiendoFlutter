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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filas, columnas y botones"),        
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(            
            width: MediaQuery.of(context).size.width/3,
            height: 50,
            color: const Color.fromARGB(161, 212, 183, 104),            
            child: const Text("Hola 01", textAlign: TextAlign.center),
          ),
          const Text("Hola 02"),
          // Texto
          TextButton (   // Raised button no funciona            
              // onPressed: null, // con null, no hace nada
              child: const Row (
                mainAxisSize: MainAxisSize.min, //Mínimo para que tenga el mínimo tamaño posible
                children: [
                    Icon(Icons.punch_clock), // Se puede ver un icono
                    SizedBox( width: 7,), // Se parador con una caja con tamaño
                    Text("Ver la hora"), // Se puede poner texto. 
                ],
              ),
              onPressed: () {
                var t = DateTime.now(); // llama a la fecha y hora.
                print(t); // Imprime en la consola de depuración, no en la pantalla. 
              }, // función anónima, y puedo pulsarlo
              
          ),

        ],
      ),
      );
  }
} // fin de la clase inicio extends


