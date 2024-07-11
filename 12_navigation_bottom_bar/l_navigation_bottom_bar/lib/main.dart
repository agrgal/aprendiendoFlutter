import 'package:flutter/material.dart';
import 'package:l_navigation_bottom_bar/pages/home.dart';
import 'package:l_navigation_bottom_bar/pages/users.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget { // Widget que trabaja con estado.
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _paginaActual = 0;

  final List<Widget> _mispaginas =[
    const PaginaHome(),
    const PaginaUsers(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // para que me quite la etiqueta de desarrollo
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Barra de navegación inferior'),
        ),
        // body: _paginaActual==0 ? const PaginaHome() : const PaginaUsers(),
        body: _mispaginas[_paginaActual],
        bottomNavigationBar: BottomNavigationBar( // apartado especial del Material app, con un widget especial BottomNavigationBar
          onTap: (index){ // al pulsar sobre la pantalla
              setState(() { // Necesita recargar el estado
                   _paginaActual = index; // esto señala el botón que he pulsado. 
              });
          },
          currentIndex: _paginaActual, // índice por defecto
          items: const [ // que recibe elementos items
          // Me da error si no pongo al menos dos, y si no le pongo labels. 
            BottomNavigationBarItem(icon: Icon(Icons.home), label:"casa"), // que son elementos de la clase BottomNavigationBarItem
            BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle_outlined), label: "coche"),
          ],),
        
      ),
    );
  }
}




