// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

// ==================================
// VARIABLES PARA TODO EL PROGRAMA ??
// ==================================
bool _subscrito = false; // La coloco fuera de la clase para que pueda usarse
// en todo el programa. ¿Variable global?

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
        title: const Text("Alertas"),        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
             onPressed: (){
                _mostrarAlerta(context);
             }, 
             style: ElevatedButton.styleFrom(
              foregroundColor: const Color.fromARGB(158, 237, 221, 221),
              backgroundColor: Colors.red,
             ),
             child: Text(
              _subscrito ? "¿Quieres dejar de pertenecer al canal?" : "¿Quieres inscribirte en el canal?",
              style: const TextStyle(fontSize: 16.0),
              ),
             ),
             const SizedBox(height: 100,),
             Text(
              _subscrito ? "Subscrito" : "No subscrito",
              style: const TextStyle(fontSize: 20),
              )
          ],
        ),
      ), // Widget que se llama center 
      );
  } // fin del widget build

/* ==========================  */
/* funcion dentro de la clase  */
/* =========================== */
void _mostrarAlerta(BuildContext contexto) {
  showDialog(
    // builder: (contexto) => const AlertDialog(
    barrierDismissible: false, // No se puede quitar la alerta
    builder: (_) => AlertDialog(
      title: const Text("Suscribirse"),
      content: Text(
        _subscrito ? "¿Estás seguro que quieres desubscribirte?" : "¿Estás seguro de suscribirte?"
      ),
      actions: [
        ElevatedButton(
         onPressed: (){
           print("Sí");   
           setState(() { //cambia el estado de la clase. 
           // Para ello la función tiene que estar dentro de la clase Inicio extends.
           // Ver la última llave al final. 
             _subscrito = !_subscrito;
           });
           Navigator.pop(contexto); // vuelve a la pantalla
         },
         child: const Text("Sí, seguro"),
        ),
        ElevatedButton(
         onPressed: (){
           print("No");
           Navigator.pop(contexto); //vuelve a la pantalla
         },
         child: const Text("No, cancela")
        ,),
      ],

    ), 
    context: contexto,
  );
} // fin de mostrar alerta

} // fin de la clase inicio extends


