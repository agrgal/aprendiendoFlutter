import 'package:flutter/material.dart';

void main() {
  runApp(const Miapp());
}

class Miapp extends StatelessWidget {
  const Miapp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Widgets separados',
      home: Inicio(title: 'Widgets separados'),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key, required this.title});
  final String title;
  @override
  State<Inicio> createState() => _Inicio();
}

class _Inicio extends State<Inicio> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text(widget.title),
      ), */ // si lo quito no aparece la barra de título.
      body: cuerpo(),
    );
  }
}


/* ========= */
/* FUNCIONES */
/* ========= */

Widget cuerpo() { // recuerda que es una func
  return Container ( 
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/%22La_noche_estrellada%22_de_Van_gogh.jpg/1280px-%22La_noche_estrellada%22_de_Van_gogh.jpg"),
        fit: BoxFit.cover, // está dentro del DecorationImage
        ),
    ),
    child: Center( // Esto permite que se expanda.
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            nombre(),
            campousuario(),
            campocontrasena(),
            const SizedBox(height: 80),
            botonentrar(),
          ],
      ),
    ),
    );  
}

Widget nombre() { // función que devuelve el nombre de la aplicación
  return const Text(
    "SIGN IN",
    style: TextStyle( color: Color.fromARGB(255, 219, 201, 201), fontSize: 50.0), // Cambiar tamaño y color
  );
}

Widget campousuario() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 9),
    child: const TextField(
      decoration: InputDecoration(
          hintText: "Usuario",
          fillColor: Colors.white, filled: true,
      ),
    ),
  );
}

Widget campocontrasena() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 9),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Password",
          fillColor: Colors.white, filled: true,
      ),
    ),
  );
}

Widget botonentrar() {
  return TextButton( 
    style: TextButton.styleFrom(
        foregroundColor: Colors.blue,
        backgroundColor: Colors.cyanAccent,
        fixedSize: const Size(200, 50),
    ),
    onPressed: (){} ,
    child: const Text("Boton entrar", style: TextStyle(fontSize: 20),),
  );
}