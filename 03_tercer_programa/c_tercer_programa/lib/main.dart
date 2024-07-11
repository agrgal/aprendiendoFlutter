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
  // ignore: library_private_types_in_public_api
  _InicioState createState() => _InicioState();
} // fin de la clase inicio

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi primera aplicación"),        
      ),
      /* =============================== */
      /* Empezamos trabajando en el body */
      /* =============================== */
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Image.network("https://www.seritium.es/wordpress/wp-content/uploads/2023/03/WhatsApp-Image-2022-11-15-at-18.56.32-e1683469980621.jpeg"),
              ), // Container 2
        ],
      ),
      /* =============*/
      /* Fin del body */
      /* ============ */
    );
  } // fin del Widget
} // fin de la clase inicio extends
