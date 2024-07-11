import 'package:flutter/material.dart';
import 'package:o_traspasar_informacion/pages/sfull.dart';
import 'package:o_traspasar_informacion/pages/sless.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    TextEditingController miTexto = TextEditingController(text: "");

    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Principal'),
      ),
      body: Column(
        children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: miTexto,
                style: const TextStyle(color: Colors.white,)  ,              
                decoration: const InputDecoration(
                  /* focusColor: Colors.white10, */                  
                  fillColor: Color.fromARGB(255, 108, 106, 106),
                  filled: true,
                  border: InputBorder.none,
                  hintText: "Información a mandar",
                  hintStyle: TextStyle(color: Color.fromARGB(255, 252, 227, 151),)
                ),
              ),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> PStless(miTexto.text)),);
                  /* print(miTexto.text); */
              }, 
              child: const Text("Enviar a Stateless"),
              ),
             const SizedBox(height: 20.0,),
             ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> PStfull(miTexto.text)),);
              }, 
              child: const Text("Enviar a Statefull"),
              ),
        ],
      ),
    );
  }
}