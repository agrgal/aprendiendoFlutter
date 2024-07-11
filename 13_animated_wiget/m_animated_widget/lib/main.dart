import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  double _width = 100.0;
  double _height = 100.0;
  Color _color = Colors.blue;
  BorderRadius _borderRadius = BorderRadius.circular(10.0); 

  void _cambiarContainer(){
      final random = Random();
      _width = random.nextDouble()*250.0+100.0; // entre 100 y 350
      _height = random.nextDouble()*250.0+100.0;
      _color = Color.fromRGBO(
        random.nextInt(256), 
        random.nextInt(256), 
        random.nextInt(256), 
        1); // colores opacos
        // random.nextDouble());
      _borderRadius = BorderRadius.circular(random.nextInt(15)+3);
      setState(() {} ); // cambiar el estado 
    }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contenedor Animado'),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // mainAxisSize: MainAxisSize.max,
          children: [
            Expanded( // Este contenedor expande el elemento Center todo lo que puede.              
              child: Center(   
                child: InkWell(
                  onTap: _cambiarContainer,
                  child: AnimatedContainer ( // Sustituyo Container poor un animated container                    
                      width: _width,
                      height: _height,
                      // color: Colors.orange, --> No se puede poner con decoration
                      decoration: BoxDecoration(
                        borderRadius: _borderRadius,
                        color: _color,
                      ), 
                      duration: const Duration(milliseconds: 500,), // duracion de la animacion
                      curve: Curves.elasticIn, // tipo de movimiento              
                  ),
                ),            
              ),
            ),
            ElevatedButton(
              onPressed: _cambiarContainer, // simplemente la llamada de la función
              child: const Text("Cambiar Container")),
          ],
        ),
      ),
    );
  }
}