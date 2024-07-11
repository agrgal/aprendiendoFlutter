import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int value = 0;
  bool visible = false;

  _changeValue() async {
    SharedPreferences preferencias = await SharedPreferences.getInstance();
    // preferencias es un objeto que guarda valores. Trabaja con await y async
    setState(() {
      value ++;
      preferencias.setInt("valor",value);
    });
  }

  _cargarPreferencias() async {
    SharedPreferences preferencias = await SharedPreferences.getInstance();
    setState(() {
      value = preferencias.getInt("valor") ?? 0;
      visible = true;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _cargarPreferencias();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferencias',
      home: Scaffold(        
        appBar: AppBar(
          title: const Text('Preferencias'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (visible) Text(
                  value.toString(),                   
                  style: const TextStyle(fontSize: 80.0, color: Colors.purple)),
              TextButton(onPressed: _changeValue, child: const Text("Aumentar Valor")),
              const SizedBox(height: 20.0,),
              TextButton(
                onPressed: (){
                   value = -1;
                   _changeValue();
                },               
                child: const Text("Anular Contador")),
            ],
          ),
        ),
      ),
    );
  }


}