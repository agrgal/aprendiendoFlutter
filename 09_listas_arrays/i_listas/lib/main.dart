import 'package:flutter/material.dart';

void main() =>runApp(const MyWidget());

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  final List<Persona> _personas=[
      Persona("Luis","Suárez","003562589"),
      Persona("Manuel","Laínez","0032443"),
      Persona("Alberto","García","00311131"),
      Persona("Ana","González","14324324"),
      Persona("Mariela","Gómez","435435345"),
      Persona("Humberto","Rodríguez","9987667"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi aplicación",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Mis listas"),
        ),
        body:ListView.builder(
          itemCount: _personas.length,
          itemBuilder: (context,index) {
            // return Text(_personas[index].nm);
            return ListTile(
              title: Text("${_personas[index].nm} ${_personas[index].lastname}"),
              subtitle: Text(_personas[index].phone),
              leading: CircleAvatar(
                child: Text(_personas[index].nm.substring(0,1)),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              onLongPress: (){ // pulsación larga. Dejar presionado. 
              // onTap: (){ // pulsación corta               
                _borrarpersona(context,_personas[index]);
              },
            );
          },
        ),
      ),
    );
  }

/* FUNCIONES */
// Antes de acabar el Widget principal

_borrarpersona (context, Persona persona) {
  showDialog(
    context: context, 
    builder: (_) => AlertDialog(
      title: const Text("Borrado"),
      content: Text("${"¿Quieres borrar a ${persona.nm}"} de la lista?"),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        },
        child: const Text("Cancelar"),
        ),
        TextButton(onPressed: (){
          print("${persona.nm} ${persona.lastname}");
          setState(() { // Necesario para refrescar la pantalla y los datos.
            _personas.remove(persona); // forma de quitarlo de la lista
          });          
          Navigator.pop(context);
        },
        child: const Text("Borrar", style: TextStyle(color: Colors.red)),
        ),
      ],

    ), // AlertDialog
    ); // ShowDialog
}

} // Fin del widget principal

/* Clases */
class Persona {
  late String nm;
  late String lastname;
  late String phone;

  Persona(nombre,apellidos,tfno) {
    nm = nombre;
    lastname = apellidos;
    phone = tfno;
  }

}